within HPF.Templates.Examples;
model ACConverterwLoads
  extends Modelica.Icons.Example;
  HPF.Templates.ACConverterwLoads aCConverterwLoads[nConverters]
    annotation (Placement(transformation(extent={{0,0},{20,20}})));
  SinglePhase.Sources.VoltageSource     input_source(
    start_v_re={120,0,0,0,0,0,0,0,0,0},
    vArg={0,0,0,0,0,0,0,0,0,0},
    vMag={120,0,0,0,0,0,0,0,0,0})                                                                                                                                                    annotation (
    Placement(visible = true, transformation(origin={-50,10},     extent={{-10,-10},
            {10,10}},                                                                              rotation = -90)));
  Cables.NEC_CableModel     AC_cable(length=60, wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12)      annotation (
    Placement(visible = true, transformation(origin={-50,50},      extent={{-10,-10},
            {10,10}},                                                                               rotation = -90)));
  SinglePhase.Components.Ground     ground annotation (
    Placement(visible = true, transformation(origin={-50,-30},      extent={{-10,-10},
            {10,10}},                                                                                rotation = 0)));
    Modelica.Blocks.Sources.Constant  const[loadwStepDown2.nLoad](k=10)
    annotation (Placement(transformation(
        extent={{-60,50},{-40,70}},
        origin={0,20},
        rotation=0)));
equation
  connect(input_source.pin_p, AC_cable.pin_n)
    annotation (Line(points={{-50,20},{-50,40}}, color={92,53,102}));
  connect(AC_cable.pin_p, aCConverterwLoads.pin_p) annotation (Line(points={{
          -50,60},{-20,60},{-20,10},{0,10}}, color={92,53,102}));
  connect(ground.pin, input_source.pin_n)
    annotation (Line(points={{-50,-20},{-50,0}}, color={92,53,102}));
  connect(input_source.pin_n, aCConverterwLoads.pin_n) annotation (Line(points=
          {{-50,0},{-50,-10},{30,-10},{30,10},{20,10}}, color={117,80,123}));
  connect(const.y, aCConverterwLoads.u) annotation (Line(points={{-39,80},{-10,
          80},{-10,14},{9.8,14}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ACConverterwLoads;
