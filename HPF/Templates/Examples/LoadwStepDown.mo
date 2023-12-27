within HPF.Templates.Examples;
model LoadwStepDown
  extends Modelica.Icons.Example;
    .Modelica.Blocks.Sources.Constant const[loadwStepDown2.nLoad](k=10)
    annotation (Placement(transformation(
        extent={{-60,50},{-40,70}},
        origin={0,0},
        rotation=0)));
  HPF.Templates.LoadwStepDown loadwStepDown2(
    nLoad = 2, redeclare replaceable DC.DC2DC_Converters.DummyShort
      dcdc_Converter(modelData=igor_PoE_Driver) "No step down")
    annotation(Placement(transformation(extent = {{-2.0,-38.0},{18.0,-18.0}},origin={62,24},    rotation = 0.0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor11(R=5)   annotation (
    Placement(visible = true, transformation(origin={-38,-4},     extent={{-10,10},
            {10,-10}})));
  Cables.NEC_CableModelDC     PoE_cable_3(length=30, wireGaugeDC=HPF.Types.WireGaugeDC.guage_POE_VHC)      annotation (
    Placement(visible = true, transformation(origin={-2,-4},     extent={{-10,-10},
            {10,10}},                                                                             rotation = 0)));
  PowerConverters.SinglePhase.ACDC_1pRectifierSimple     PoE_switch(
    P_DCmin=1,
    P_nom=820,
    P_stby=37,
    VAC_nom=120,
    VDC_nom=53,
    alpha=0.043076,
    beta=0.069259,
    gamma=0.080952)                                                                                                                                                                           annotation (
    Placement(visible = true, transformation(origin={-75,-9},     extent={{-11,-11},
            {11,11}},                                                                              rotation = 0)));
  Cables.NEC_CableModel     AC_cable(length=6, wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12)      annotation (
    Placement(visible = true, transformation(origin={-108,4},     extent={{-10,-10},
            {10,10}},                                                                              rotation = 0)));
  SinglePhase.Sources.VoltageSource     input_source(
    start_v_re={120,0,0,0,0,0,0,0,0,0},
    vArg={0,0,0,0,0,0,0,0,0,0},
    vMag={120,0,0,0,0,0,0,0,0,0})                                                                                                                                                    annotation (
    Placement(visible = true, transformation(origin={-125,-21},   extent={{-15,-15},
            {15,15}},                                                                              rotation = -90)));
  SinglePhase.Components.Ground     ground annotation (
    Placement(visible = true, transformation(origin={-124,-56},     extent={{-10,-10},
            {10,10}},                                                                                rotation = 0)));
  DC.Ground     ground1 annotation (
    Placement(visible = true, transformation(origin={-58,-64},    extent={{-10,-10},
            {10,10}},                                                                              rotation = 0)));
  inner SystemDef     systemDef(
    fs=10e3,
    hrms={i for i in 1:2:20},
    numPh=1)                                                                      annotation (
    Placement(visible = true, transformation(origin={-75.9998,31.6668},    extent={{
            -11.9998,-11.6666},{11.9998,8.33324}},                                                                              rotation = 0)));
  parameter .HPF.Data.ConverterModels.DC2DC_StepDown.Igor_PoE_Driver_53W igor_PoE_Driver
    annotation (Placement(transformation(extent={{40,40},{60,60}})));
  Interfaces.LoadBus bus[2] annotation (Placement(transformation(extent={{-16,
            40},{24,80}}), iconTransformation(extent={{-124,8},{-84,48}})));
equation
  connect(PoE_cable_3.p, resistor11.n)
    annotation (Line(points={{-12,-4},{-28,-4}}, color={0,0,255}));
  connect(input_source.pin_p, AC_cable.pin_p) annotation (Line(points={{-125,-6},
          {-122,-6},{-122,4},{-118,4}}, color={92,53,102}));
  connect(AC_cable.pin_n, PoE_switch.hPin_L) annotation (Line(points={{-98,4},{-94,
          4},{-94,-0.2},{-86,-0.2}}, color={117,80,123}));
  connect(ground.pin, input_source.pin_n) annotation (Line(points={{-124,-46},{-125,
          -46},{-125,-36}}, color={92,53,102}));
  connect(input_source.pin_n, PoE_switch.hPin_N) annotation (Line(points={{-125,
          -36},{-106,-36},{-106,-17.8},{-86,-17.8}}, color={117,80,123}));
  connect(PoE_switch.pin_p, resistor11.p) annotation (Line(points={{-64,-0.2},{-56,
          -0.2},{-56,-4},{-48,-4}}, color={0,0,255}));
  connect(PoE_cable_3.n, loadwStepDown2.p) annotation (Line(points={{8,-4},{60,
          -4}},                                   color={0,0,255}));
  connect(loadwStepDown2.n, PoE_switch.pin_n) annotation (Line(points={{80,-4},
          {90,-4},{90,-40},{-62,-40},{-62,-17.8},{-64,-17.8}},  color={0,0,255}));
  connect(PoE_switch.pin_n, ground1.p) annotation (Line(points={{-64,-17.8},{-62,
          -17.8},{-62,-54},{-58,-54}}, color={0,0,255}));
  connect(const.y, loadwStepDown2.u) annotation (Line(points={{-39,60},{-20,60},
          {-20,1},{70.2,1}}, color={0,0,127}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={                                                                                                                            Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString
            =                                                                                                                                                                                                        "%name")}));
end LoadwStepDown;
