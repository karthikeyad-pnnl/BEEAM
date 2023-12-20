within HPF.Templates;
model LoadwStepDown
  extends Modelica.Electrical.Analog.Interfaces.OnePort;

  parameter Integer nLoad(
    final min=1)=1;

  parameter Modelica.SIunits.Resistance R[nLoad]
    "Resistance at temperature T_ref";

  parameter HPF.Data.ConverterModels.DC2DC_StepDown.ModelData stepDownData;

  //parameter Integer nLoad;

  HPF.DC.DC2DC_Converters.StepDown dcdc_Converter(
    final modelData=modelData.stepDownData)
    annotation(Placement(transformation(
      extent = {{-50.0,-8.666666666666666},{-30.0,11.333333333333334}})));

  HPF.DC.Variable_DC_Load onePort[modelData.nLoad]
    annotation (Placement(transformation(extent={{-10.0,-10.0},{10.0,10.0}},
      origin={30,10},
      rotation=-90.0)));

  final parameter HPF.Templates.Data.LoadwStepDown modelData(
    nLoad=nLoad,
    stepDownData=stepDownData,
    R=R)
    annotation (Placement(transformation(extent={{60,60},{80,80}})));

  DC.Ground     ground1
    annotation (Placement(visible = true, transformation(origin={77,-69},
      extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u[modelData.nLoad] "Input Power"
    annotation (Placement(transformation(extent={{-140,60},{-100,100}}),
        iconTransformation(origin={-120,80}, extent={{-20,-20},{20,20}})));
  Cables.NEC_CableModelDC     PoE_cable_1(length=5, wireGaugeDC=HPF.Types.WireGaugeDC.guage_POE_Patch)
                                                                                                            annotation (
    Placement(visible = true, transformation(origin={-70,40},     extent={{-10,-10},
            {10,10}},                                                                              rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R=0)    annotation (
    Placement(visible = true, transformation(origin={-80,18},      extent={{-10,-10},
            {10,10}},                                                                               rotation = 90)));
equation
  //hasVariableLoad= Modelica.Math.BooleanVectors.anyTrue(onePort.loadType == fill(HPF.DC.DCLoadTypes.VariableLoad, nLoad));
    for i in 1:modelData.nLoad loop
    connect(dcdc_Converter.n2,onePort[i].n)
      annotation(Line(points={{-30,-8.66667},{-30,-8},{30,-8},{30,-3.55271e-15}},
        color = {0,0,255}));
    connect(dcdc_Converter.p2, onePort[i].p)
      annotation (Line(points={{-30,11.3333},{-22,11.3333},{-22,20},{30,20}},
        color={0,0,255}));
    end for;
    connect(dcdc_Converter.n1,n)
      annotation(Line(points = {{-50,-8.666666666666666},{-50,-24},{100,-24},{100,0}},
        color = {0,0,255}));

  connect(u, onePort.u)
    annotation (Line(points={{-120,80},{35,80},{35,9.8}},color={0,0,127}));
  connect(ground1.p, dcdc_Converter.n2) annotation (Line(points={{77,-56},{77,
          -8.66667},{-30,-8.66667}}, color={0,0,255}));
  connect(resistor.n,PoE_cable_1. p) annotation (
    Line(points={{-80,28},{-80,40}},                                    color = {0, 0, 255}));
  connect(p, resistor.p) annotation (Line(points={{-100,0},{-104,0},{-104,8},{
          -80,8}}, color={0,0,255}));
  connect(PoE_cable_1.n, dcdc_Converter.p1) annotation (Line(points={{-60,40},{
          -60,11.3333},{-50,11.3333}}, color={0,0,255}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={  Rectangle(lineColor={0,0,0},fillColor={230,230,230},
            fillPattern =                                                                                                                                                              FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString
            =                                                                                                                                                                                                        "%name")}));
end LoadwStepDown;
