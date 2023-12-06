within HPF.Templates;
model LoadwStepDown
  extends Modelica.Electrical.Analog.Interfaces.OnePort;
  parameter Integer nLoad = 1;
  //final parameter Boolean hasVariableLoad=(max(onePort.loadType)) == Integer(HPF.DC.DCLoadTypes.VariableLoad);
  replaceable HPF.DC.DC2DC_Converters.Interface dcdc_Converter(final modelData=
        modelData.stepDownData)                                constrainedby
    HPF.DC.DC2DC_Converters.Interface
    annotation(Placement(transformation(extent = {{-50.0,-8.666666666666666},{-30.0,11.333333333333334}},origin = {0.0,0.0},rotation = 0.0)),choices(
      choice(redeclare replaceable HPF.DC.DC2DC_Converters.StepDown dcdc_Converter
        "DC step down"),
      choice(redeclare replaceable HPF.DC.DC2DC_Converters.DummyShort dcdc_Converter
      "No step down")));
  replaceable HPF.Templates.Interfaces.PartialLoad onePort[nLoad] constrainedby
    HPF.Templates.Interfaces.PartialLoad
    annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {28.0,0.0},rotation = -90.0)),choices(
        choice(redeclare replaceable HPF.Templates.VariableLoad onePort
          "Variable DC load"),
        choice(redeclare replaceable HPF.Templates.DCLoad onePort
          "Constant DC load")));
//   Modelica.Blocks.Interfaces.RealInput u[nLoad] if hasVariableLoad
//     annotation(Placement(transformation(extent = {{-140.0,60.0},{-100.0,100.0}},origin = {0.0,0.0},rotation = 0.0)));
  parameter HPF.Templates.Data.LoadwStepDown modelData(nLoad=nLoad)
    annotation (Placement(transformation(extent={{60,60},{80,80}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor11[nLoad](R=5) annotation (
      Placement(visible=true, transformation(origin={2,30}, extent={{-10,10},{10,
            -10}})));
  Interfaces.LoadBus bus[nLoad] annotation (Placement(transformation(extent={{-30,
            30},{10,70}}), iconTransformation(extent={{-128,-34},{-88,6}})));
equation
  //hasVariableLoad= Modelica.Math.BooleanVectors.anyTrue(onePort.loadType == fill(HPF.DC.DCLoadTypes.VariableLoad, nLoad));
    for i in 1:nLoad loop
    connect(dcdc_Converter.n2,onePort[i].n)
      annotation(Line(points={{-30,-8.66667},{-30,-14.6667},{28,-14.6667},{28,-10}},
        color = {0,0,255}));
    connect(dcdc_Converter.p2, resistor11[i].p)
      annotation (Line(points={{-30,11.3333},{-20,11.3333},{-20,30},{-8,30}},
        color={0,0,255}));
    end for;
    connect(p,dcdc_Converter.p1) annotation(Line(points = {{-100,0},{-100,17.333333333333336},{-50,17.333333333333336},{-50,11.333333333333334}},color = {0,0,255}));
    connect(dcdc_Converter.n1,n) annotation(Line(points = {{-50,-8.666666666666666},{-50,-24},{100,-24},{100,0}},color = {0,0,255}));
  connect(resistor11.n, onePort.p) annotation (Line(points={{12,30},{20,30},{20,
          10},{28,10}}, color={0,0,255}));
  connect(bus, onePort.bus) annotation (Line(
      points={{-10,50},{35.4,50},{35.4,6}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-3,6},{-3,6}},
      horizontalAlignment=TextAlignment.Right));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={  Rectangle(lineColor={0,0,0},fillColor={230,230,230},
            fillPattern =                                                                                                                                                              FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString
            =                                                                                                                                                                                                        "%name")}));
end LoadwStepDown;
