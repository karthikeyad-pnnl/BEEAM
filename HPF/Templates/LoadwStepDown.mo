within HPF.Templates;
model LoadwStepDown
  extends Modelica.Electrical.Analog.Interfaces.OnePort;

  parameter Integer nLoad(
    final min=1)=1;
  parameter Boolean hasVariableLoad[nLoad]=fill(false, nLoad);
  parameter Modelica.SIunits.Power pwr_value[nLoad](
    final min=fill(0, nLoad))=fill(1, nLoad);

  parameter Modelica.SIunits.Resistance R[nLoad]
    "Resistance at temperature T_ref";

  parameter HPF.Data.ConverterModels.DC2DC_StepDown.ModelData stepDownData;

  //parameter Integer nLoad;

  replaceable HPF.DC.DC2DC_Converters.Interface dcdc_Converter(
    final modelData=modelData.stepDownData) constrainedby
    HPF.DC.DC2DC_Converters.Interface
    annotation(Placement(transformation(
      extent = {{-50.0,-8.666666666666666},{-30.0,11.333333333333334}})),
      choices(
        choice(redeclare replaceable HPF.DC.DC2DC_Converters.StepDown dcdc_Converter
          "DC step down"),
        choice(redeclare replaceable HPF.DC.DC2DC_Converters.DummyShort dcdc_Converter
        "No step down")));

  HPF.DC.Interface.DCLoad_configurable onePort[modelData.nLoad](
    hasVariableLoad=modelData.hasVariableLoad,
    pwr_value=modelData.pwr_value)
    annotation (Placement(transformation(extent={{-10.0,-10.0},{10.0,10.0}},
      origin={30,10},
      rotation=-90.0)));

  final parameter HPF.Templates.Data.LoadwStepDown modelData(
    nLoad=nLoad,
    hasVariableLoad=hasVariableLoad,
    pwr_value=pwr_value,
    stepDownData=stepDownData,
    R=R)
    annotation (Placement(transformation(extent={{60,60},{80,80}})));

  Interfaces.ComponentBus bus[modelData.nLoad]
    annotation (Placement(transformation(extent={{-90,60},{-50,100}}),
      iconTransformation(extent={{-100,60},{-60,100}})));

equation
  //hasVariableLoad= Modelica.Math.BooleanVectors.anyTrue(onePort.loadType == fill(HPF.DC.DCLoadTypes.VariableLoad, nLoad));
    for i in 1:modelData.nLoad loop
    connect(dcdc_Converter.n2,onePort[i].n)
      annotation(Line(points={{-30,-8.66667},{-30,-8},{-20,-8},{-20,-18},{30,-18},
            {30,-3.55271e-15}},
        color = {0,0,255}));
    connect(dcdc_Converter.p2, onePort[i].p)
      annotation (Line(points={{-30,11.3333},{-22,11.3333},{-22,20},{30,20}},
        color={0,0,255}));
    end for;
    connect(p,dcdc_Converter.p1)
      annotation(Line(points = {{-100,0},{-100,17.333333333333336},{-50,17.333333333333336},{-50,11.333333333333334}},
        color = {0,0,255}));
    connect(dcdc_Converter.n1,n)
      annotation(Line(points = {{-50,-8.666666666666666},{-50,-24},{100,-24},{100,0}},
        color = {0,0,255}));

  connect(bus.uLoad, onePort.u) annotation (Line(
      points={{-70,80},{38,80},{38,22}},
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
