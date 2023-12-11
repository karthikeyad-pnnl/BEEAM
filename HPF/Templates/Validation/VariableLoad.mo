within HPF.Templates.Validation;
model VariableLoad
  extends Modelica.Icons.Example;
  HPF.Templates.VariableLoad dCLoad
    annotation (Placement(transformation(extent={{20,0},{40,20}})));
  SinglePhase.Sources.VoltageSource     input_source                                                                                                                                              annotation (
    Placement(visible = true, transformation(origin={-80,4},      extent={{-16,-16},
            {16,16}},                                                                              rotation = -90)));
  SinglePhase.Components.Ground     ground annotation (
    Placement(visible = true, transformation(origin={-80,-72},      extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  PowerConverters.SinglePhase.ACDC_1pRectifierSimple     PoE_switch(
    P_DCmin=1.2,
    P_nom=480,
    P_stby=9.2,
    VAC_nom=120,
    VDC_nom=53,
    alpha=0.022145,
    beta=0.078036,
    gamma=-4.3962e-3)                                                                                                                                                                              annotation (
    Placement(visible = true, transformation(origin={-13,1},      extent={{-13,-13},
            {13,13}},                                                                              rotation = 0)));
  Cables.NEC_CableModel     AC_cable(length=60, wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12)      annotation (
    Placement(visible = true, transformation(origin={-50,30},     extent={{-10,-10},
            {10,10}},                                                                              rotation = 0)));
  inner SystemDef systemDef
    annotation (Placement(transformation(extent={{52,58},{80,82}})));
  DC.Ground ground1
    annotation (Placement(transformation(extent={{20,-40},{40,-20}})));
  Interfaces.ComponentBus bus annotation (Placement(transformation(extent={{-20,
            40},{20,80}}), iconTransformation(extent={{-180,-82},{-140,-42}})));
  Modelica.Blocks.Sources.Constant const(k=10)
    annotation (Placement(transformation(extent={{-60,50},{-40,70}})));
equation
  connect(ground.pin,input_source. pin_n) annotation (
    Line(points={{-80,-56},{-80,-12}},                                 color = {92, 53, 102}));
  connect(input_source.pin_n,PoE_switch. hPin_N) annotation (
    Line(points={{-80,-12},{-49,-12},{-49,-9.4},{-26,-9.4}},    color = {117, 80, 123}));
  connect(AC_cable.pin_n,PoE_switch. hPin_L) annotation (
    Line(points={{-40,30},{-26,30},{-26,11.4}},         color = {117, 80, 123}));
  connect(input_source.pin_p,AC_cable. pin_p) annotation (
    Line(points={{-80,20},{-80,30},{-60,30}},                       color = {92, 53, 102}));
  connect(PoE_switch.pin_p, dCLoad.p) annotation (Line(points={{0,11.4},{12,11.4},
          {12,10},{20,10}}, color={0,0,255}));
  connect(dCLoad.n, PoE_switch.pin_n) annotation (Line(points={{40,10},{50,10},{
          50,-9.4},{0,-9.4}}, color={0,0,255}));
  connect(ground1.p, dCLoad.n) annotation (Line(points={{30,-20},{36,-20},{36,10},
          {40,10}}, color={0,0,255}));
  connect(const.y, bus.uLoad) annotation (Line(points={{-39,60},{0,60}}, color={
          0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(bus, dCLoad.bus) annotation (Line(
      points={{0,60},{12,60},{12,17.4},{24,17.4}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}},
      horizontalAlignment=TextAlignment.Right));
  annotation (experiment(StopTime=3600, __Dymola_Algorithm="Dassl"));
end VariableLoad;
