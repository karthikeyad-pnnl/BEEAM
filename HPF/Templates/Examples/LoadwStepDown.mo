within HPF.Templates.Examples;
model LoadwStepDown
  extends Modelica.Icons.Example;
    .Modelica.Blocks.Sources.Constant const[loadwStepDown2.modelData.nLoad](k = fill(10, loadwStepDown2.nLoad)) annotation (Placement(transformation(
        extent={{-60,50},{-40,70}},
        origin={0,0},
        rotation=0)));
  HPF.Templates.Examples.Trial.LoadwStepDown loadwStepDown2(
    hasVariableLoad={false},
    pwr_value={5},
    R={1},
    stepDownData=igor_PoE_Driver)
    annotation(Placement(transformation(extent = {{-2.0,-38.0},{18.0,-18.0}},origin={62,24},    rotation = 0.0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor11(R=5)   annotation (
    Placement(visible = true, transformation(origin={-38,-4},     extent={{-10,10},
            {10,-10}})));
  Cables.NEC_CableModelDC     PoE_cable_3(length=30, wireGaugeDC=HPF.Types.WireGaugeDC.guage_POE_VHC)      annotation (
    Placement(visible = true, transformation(origin={-2,-4},     extent={{-10,-10},
            {10,10}},                                                                             rotation = 0)));
  parameter .HPF.Data.ConverterModels.DC2DC_StepDown.Igor_PoE_Driver_53W igor_PoE_Driver
    annotation (Placement(transformation(extent={{40,40},{60,60}})));
  Interfaces.ComponentBus bus[loadwStepDown2.nLoad] annotation (
      Placement(transformation(extent={{-20,38},{20,78}}), iconTransformation(
          extent={{-228,-58},{-188,-18}})));
  DC.Ground ground
    annotation (Placement(transformation(extent={{32,-96},{52,-76}})));
  SinglePhase.Sources.VoltageSource     input_source(
    start_v_re={120,0,0,0,0,0,0,0,0,0},
    vArg={0,0,0,0,0,0,0,0,0,0},
    vMag={120,0,0,0,0,0,0,0,0,0})                                                                                                                                                    annotation (
    Placement(visible = true, transformation(origin={-288,-34},   extent = {{-36, -36}, {36, 36}}, rotation = -90)));
  SinglePhase.Components.Ground     ground1
                                           annotation (
    Placement(visible = true, transformation(origin={-202,-258},    extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  PowerConverters.SinglePhase.ACDC_1pRectifierSimple     PoE_switch(
    P_DCmin=1.2,
    P_nom=480,
    P_stby=9.2,
    VAC_nom=120,
    VDC_nom=53,
    alpha=0.022145,
    beta=0.078036,
    gamma=-4.3962e-3)                                                                                                                                                                              annotation (
    Placement(visible = true, transformation(origin={-116,-34},   extent = {{-42, -42}, {42, 42}}, rotation = 0)));
  Cables.NEC_CableModel     AC_cable(length=60, wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12)      annotation (
    Placement(visible = true, transformation(origin={-219,3},     extent = {{-17, -17}, {17, 17}}, rotation = 0)));
  inner SystemDef     systemDef(
    fs=10e3,
    hrms={i for i in 1:2:20},
    numPh=1)                                                                      annotation (
    Placement(visible = true, transformation(origin={-123.333,86.667},     extent = {{-32.6667, -32.6667}, {32.6667, 23.3333}}, rotation = 0)));
equation
  connect(PoE_cable_3.p, resistor11.n)
    annotation (Line(points={{-12,-4},{-28,-4}}, color={0,0,255}));
  connect(PoE_cable_3.n, loadwStepDown2.p) annotation (Line(points={{8,-4},{60,
          -4}},                                   color={0,0,255}));
  connect(bus, loadwStepDown2.bus) annotation (Line(
      points={{0,58},{0,4},{62,4}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-3,6},{-3,6}},
      horizontalAlignment=TextAlignment.Right));
  connect(const.y, bus.uLoad) annotation (Line(points={{-39,60},{-20,60},{-20,58},{0,58}},
        color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(ground1.pin, input_source.pin_n) annotation (Line(points={{-202,-242},
          {-202,-155},{-288,-155},{-288,-70}}, color={92,53,102}));
  connect(input_source.pin_n,PoE_switch. hPin_N) annotation (
    Line(points={{-288,-70},{-181,-70},{-181,-67.6},{-158,-67.6}},
                                                                color = {117, 80, 123}));
  connect(AC_cable.pin_n,PoE_switch. hPin_L) annotation (
    Line(points={{-202,3},{-158,3},{-158,-0.4}},        color = {117, 80, 123}));
  connect(input_source.pin_p,AC_cable. pin_p) annotation (
    Line(points={{-288,2},{-263,2},{-263,3},{-236,3}},              color = {92, 53, 102}));
  connect(PoE_switch.pin_p, resistor11.p) annotation (Line(points={{-74,-0.4},{
          -61,-0.4},{-61,-4},{-48,-4}}, color={0,0,255}));
  connect(loadwStepDown2.n, PoE_switch.pin_n) annotation (Line(points={{80,-4},
          {90,-4},{90,-67.6},{-74,-67.6}}, color={0,0,255}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={                                                                                                                            Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString
            =                                                                                                                                                                                                        "%name")}));
end LoadwStepDown;
