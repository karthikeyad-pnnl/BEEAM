within HPF.Templates.Validation;
model DCLoad
  extends Modelica.Icons.Example;
  HPF.Templates.DCLoad dCLoad(pwr=50)
    annotation (Placement(transformation(extent={{20,0},{40,20}})));
  SinglePhase.Components.Ground     ground annotation (
    Placement(visible = true, transformation(origin={-80,-72},      extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  DC.Ground ground1
    annotation (Placement(transformation(extent={{38,-40},{58,-20}})));
  SinglePhase.Sources.VoltageSource     input_source(
    start_v_re={120,0,0,0,0,0,0,0,0,0},
    vArg={0,0,0,0,0,0,0,0,0,0},
    vMag={120,0,0,0,0,0,0,0,0,0})
    annotation (Placement(visible = true,
      transformation(origin={-80,-18},extent={{-16,-16},{16,16}},rotation = -90)));
  inner SystemDef     systemDef(
    fs=10e3,
    hrms={i for i in 1:2:20},
    numPh=1)
    annotation (Placement(visible = true, transformation(origin={68.0002,82},
      extent={{-13.9998,-13.9997},{13.9998,9.99997}},
      rotation = 0)));

  PowerConverters.SinglePhase.ACDC_EmpMdl     LED_driver_1(
    V_Rect=45,
    modelFileName="HPF/Data/ConverterModels/SinglePhase/ACDC/osram.mat",
    nomP=29)                                                                                                                                               annotation (
    Placement(visible = true, transformation(origin={-10,10},     extent={{-10,-10},
            {10,10}},                                                                              rotation = 0)));
  Cables.NEC_CableModel     AC_cable1(length=60, wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12)     annotation (
    Placement(visible = true, transformation(origin={-80,34},      extent={{-10,-10},
            {10,10}},                                                                               rotation = -90)));
equation
  connect(ground1.p, dCLoad.n) annotation (Line(points={{48,-20},{48,10},{40,10}},
                    color={0,0,255}));
  connect(input_source.pin_n, ground.pin)
    annotation (Line(points={{-80,-34},{-80,-56}}, color={117,80,123}));
  connect(LED_driver_1.pin_p, dCLoad.p) annotation (Line(points={{0,18},{10,18},
          {10,10},{20,10}}, color={0,0,255}));
  connect(dCLoad.n, LED_driver_1.pin_n) annotation (Line(points={{40,10},{48,10},
          {48,-10},{10,-10},{10,2},{0,2}}, color={0,0,255}));
  connect(input_source.pin_n, LED_driver_1.hPin_N) annotation (Line(points={{
          -80,-34},{-40,-34},{-40,2},{-20,2}}, color={117,80,123}));
  connect(input_source.pin_p, AC_cable1.pin_n)
    annotation (Line(points={{-80,-2},{-80,24}}, color={92,53,102}));
  connect(AC_cable1.pin_p, LED_driver_1.hPin_P) annotation (Line(points={{-80,
          44},{-50,44},{-50,18},{-20,18}}, color={92,53,102}));
end DCLoad;
