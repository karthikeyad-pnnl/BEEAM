within HPF.Templates.Examples;
model LoadwStepDown
  extends Modelica.Icons.Example;
    .Modelica.Blocks.Sources.Constant const[loadwStepDown2.modelData.nLoad](k=10)
    annotation (Placement(transformation(
        extent={{-60,50},{-40,70}},
        origin={0,0},
        rotation=0)));
  HPF.Templates.LoadwStepDown loadwStepDown2(
    redeclare replaceable DC.DC2DC_Converters.StepDown dcdc_Converter "DC step down",
    modelData(
      nLoad=1,
      hasVariableLoad={true},
      stepDownData=igor_PoE_Driver,
      R=fill(0, loadwStepDown2.modelData.nLoad)))
    annotation(Placement(transformation(extent = {{-2.0,-38.0},{18.0,-18.0}},origin={62,24},    rotation = 0.0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor11(R=5)   annotation (
    Placement(visible = true, transformation(origin={-38,-4},     extent={{-10,10},
            {10,-10}})));
  Cables.NEC_CableModelDC     PoE_cable_3(length=30, wireGaugeDC=HPF.Types.WireGaugeDC.guage_POE_VHC)      annotation (
    Placement(visible = true, transformation(origin={-2,-4},     extent={{-10,-10},
            {10,10}},                                                                             rotation = 0)));
  parameter .HPF.Data.ConverterModels.DC2DC_StepDown.Igor_PoE_Driver_53W igor_PoE_Driver
    annotation (Placement(transformation(extent={{40,40},{60,60}})));
  Interfaces.ComponentBus bus[loadwStepDown2.modelData.nLoad] annotation (
      Placement(transformation(extent={{-20,38},{20,78}}), iconTransformation(
          extent={{-228,-58},{-188,-18}})));
  DC.Ground ground
    annotation (Placement(transformation(extent={{32,-96},{52,-76}})));
  Sources.DC.FixedVoltage_VariablePower fixedVoltage_VariablePower(v_out=50)
    annotation (Placement(transformation(extent={{-80,-14},{-60,6}})));
equation
  connect(PoE_cable_3.p, resistor11.n)
    annotation (Line(points={{-12,-4},{-28,-4}}, color={0,0,255}));
  connect(PoE_cable_3.n, loadwStepDown2.p) annotation (Line(points={{8,-4},{60,
          -4}},                                   color={0,0,255}));
  connect(bus, loadwStepDown2.bus) annotation (Line(
      points={{0,58},{0,25},{49.6,25},{49.6,-7.2}},
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
  connect(fixedVoltage_VariablePower.n, resistor11.p)
    annotation (Line(points={{-60,-4},{-48,-4}}, color={0,0,255}));
  connect(fixedVoltage_VariablePower.p, ground.p)
    annotation (Line(points={{-80,-4},{-80,-76},{42,-76}}, color={0,0,255}));
  connect(loadwStepDown2.n, ground.p) annotation (Line(points={{80,-4},{92,-4},
          {92,-76},{42,-76}}, color={0,0,255}));
  connect(const[1].y, fixedVoltage_VariablePower.p_out) annotation (Line(points
        ={{-39,60},{-32,60},{-32,20},{-70,20},{-70,4}}, color={0,0,127}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={                                                                                                                            Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString
            =                                                                                                                                                                                                        "%name")}));
end LoadwStepDown;
