model Bench_Scale_Exp_9
  inner HPF.SystemDef systemDef(fFund = 60, fs = 5000, hrms = {1, 3, 5, 7, 9}, numPh = 1)  annotation (
    Placement(visible = true, transformation(origin={-180,84.5714},    extent = {{-16, -16}, {16, 11.4286}}, rotation = 0)));
  HPF.SinglePhase.Sources.VoltageSource Vin(start_v_re = {120, 0, 0, 0, 0}, vArg = {0, 0, 0, 0, 0}, vMag = {12, 0, 0, 0, 0})  annotation (
    Placement(visible = true, transformation(origin={-188,-20},    extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  HPF.PowerConverters.SinglePhase.ACDC_EmpMdl PowerSupply1(P1(start = 12), V_Rect = 19, nomP = 90, nomV = 120)  "HP P/N 608428-002" annotation (
    Placement(visible = true, transformation(origin={-128,40},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.PowerConverters.SinglePhase.ACDC_EmpMdl PowerSupply2(P1(start = 12), V_Rect = 19.5, nomP = 90, nomV = 120)  "HP P/N 677777-002" annotation (
    Placement(visible = true, transformation(origin={-108,0},   extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.SinglePhase.Components.Ground GndAC annotation (
    Placement(visible = true, transformation(origin={-188,-86},    extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
    Placement(visible = true, transformation(origin={74,-90},     extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor Load1(R = 32.7, useHeatPort = false)  annotation (
    Placement(visible = true, transformation(origin={52,46},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor Load2(R = 32.7, useHeatPort = false)  annotation (
    Placement(visible = true, transformation(origin={52,6},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput UnconditionedZoneHeatGain annotation (
    Placement(visible = true, transformation(origin={138,80},    extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin={138,80},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature ConditionedZoneAir annotation (
    Placement(visible = true, transformation(origin={106,-80},    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add FanSystemLoss annotation (
    Placement(visible = true, transformation(origin={108,-30},    extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Blocks.Interfaces.RealOutput ConditionedZoneHeatGain annotation (
    Placement(visible = true, transformation(origin={158,0},    extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin={158,0},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add ResistorLoss annotation (
    Placement(visible = true, transformation(origin={108,30},    extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Add3 UnconditionedZoneTotalLoss annotation (
    Placement(visible = true, transformation(origin={-28,80},  extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.PowerConverters.SinglePhase.ACDC_EmpMdl FanPowerSupply(P1(start = 12), P_DCmin = 0.2, V_Rect = 12, nomP = 20, nomV = 120) "P/N ??" annotation (
    Placement(visible = true, transformation(origin={-88,-40},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.DC.DC_Load Fan1(pwr = 0.5)  annotation (
    Placement(visible = true, transformation(origin={22,-62},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.DC.DC_Load Fan2(pwr = 0.5) annotation (
    Placement(visible = true, transformation(origin={22,-34},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add ConditionedZoneTotalLoss annotation (
    Placement(visible = true, transformation(origin={128,0},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.PowerSensor Load1_Power annotation (
    Placement(visible = true, transformation(origin={22,46},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.PowerSensor Load2_Power annotation (
    Placement(visible = true, transformation(origin={22,6},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.PowerSensor FanPower2 annotation (
    Placement(visible = true, transformation(origin={-28,-34},  extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.PowerSensor FanPower1 annotation (
    Placement(visible = true, transformation(origin={-8,-62},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant DummyZoneTemp(k = 295)  annotation (
    Placement(visible = true, transformation(origin={182,-56},    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput ConditionedZoneTemp annotation (
    Placement(visible = true, transformation(origin={156,-88},    extent = {{10, -10}, {-10, 10}}, rotation = 0), iconTransformation(extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add
    annotation (Placement(transformation(extent={{152,-48},{132,-28}})));
  Modelica.Blocks.Sources.Sine sine(amplitude=100, freqHz=0.00001)
    annotation (Placement(transformation(extent={{190,-30},{170,-10}})));
equation
  connect(Load1.n, GndDC.p) annotation (
    Line(points={{62,46},{74,46},{74,-80}},          color = {0, 0, 255}));
  connect(Load2.n, GndDC.p) annotation (
    Line(points={{62,6},{74,6},{74,-80}},          color = {0, 0, 255}));
  connect(PowerSupply2.pin_n, GndDC.p) annotation (
    Line(points={{-98,-6},{74,-6},{74,-80}},          color = {0, 0, 255}));
  connect(PowerSupply1.pin_n, GndDC.p) annotation (
    Line(points={{-118,34},{74,34},{74,-80}},         color = {0, 0, 255}));
  connect(GndAC.pin, Vin.pin_n) annotation (
    Line(points={{-188,-78},{-188,-30}},      color = {92, 53, 102}));
  connect(ConditionedZoneAir.port, Load2.heatPort) annotation (
    Line(points={{96,-80},{84,-80},{84,-20},{52,-20},{52,-4}},               color = {191, 0, 0}));
  connect(Load1.heatPort, ConditionedZoneAir.port) annotation (
    Line(points={{52,36},{52,21},{84,21},{84,-80},{96,-80}},               color = {191, 0, 0}));
  connect(Vin.pin_p, PowerSupply1.hPin_P) annotation (
    Line(points={{-188,-10},{-188,46},{-138,46}},        color = {92, 53, 102}));
  connect(FanPowerSupply.pin_n, GndDC.p) annotation (
    Line(points={{-78,-46},{-68,-46},{-68,-76},{74,-76},{74,-80}},              color = {0, 0, 255}));
  connect(Load1_Power.nv, PowerSupply1.pin_n) annotation (
    Line(points={{22,36},{21.5,36},{21.5,34},{-118,34}},         color = {0, 0, 255}));
  connect(Load1_Power.nc, Load1.p) annotation (
    Line(points={{32,46},{42,46}},      color = {0, 0, 255}));
  connect(Load1_Power.pc, PowerSupply1.pin_p) annotation (
    Line(points={{12,46},{-118,46}},     color = {0, 0, 255}));
  connect(Load1_Power.pv, PowerSupply1.pin_p) annotation (
    Line(points={{22,56},{12,56},{12,46},{-118,46}},         color = {0, 0, 255}));
  connect(Load2_Power.nc, Load2.p) annotation (
    Line(points={{32,6},{42,6}},                        color = {0, 0, 255}));
  connect(Load2_Power.pc, PowerSupply2.pin_p) annotation (
    Line(points={{12,6},{-98,6}},      color = {0, 0, 255}));
  connect(Load2_Power.nv, PowerSupply2.pin_n) annotation (
    Line(points={{22,-4},{22,-6},{-98,-6}},        color = {0, 0, 255}));
  connect(FanPower1.pc, FanPowerSupply.pin_p) annotation (
    Line(points={{-18,-62},{-60,-62},{-60,-34},{-78,-34}},         color = {0, 0, 255}));
  connect(FanPower2.pc, FanPowerSupply.pin_p) annotation (
    Line(points={{-38,-34},{-78,-34}},      color = {0, 0, 255}));
  connect(FanPower2.pv, FanPower2.pc) annotation (
    Line(points={{-28,-24},{-38,-24},{-38,-34}},      color = {0, 0, 255}));
  connect(FanPower1.pv, FanPower1.pc) annotation (
    Line(points={{-8,-52},{-18,-52},{-18,-62}},      color = {0, 0, 255}));
  connect(FanPower2.nc, Fan2.p) annotation (
    Line(points={{-18,-34},{12,-34}},     color = {0, 0, 255}));
  connect(FanPower1.nc, Fan1.p) annotation (
    Line(points={{2,-62},{12,-62}},       color = {0, 0, 255}));
  connect(FanPower1.nv, GndDC.p) annotation (
    Line(points={{-8,-72},{-8,-76},{74,-76},{74,-80}},            color = {0, 0, 255}));
  connect(Fan1.n, GndDC.p) annotation (
    Line(points={{32,-62},{74,-62},{74,-80}},          color = {0, 0, 255}));
  connect(Fan2.n, GndDC.p) annotation (
    Line(points={{32,-34},{74,-34},{74,-80}},          color = {0, 0, 255}));
  connect(ConditionedZoneTotalLoss.u1, ResistorLoss.y) annotation (
    Line(points={{116,6},{108,6},{108,19}},                   color = {0, 0, 127}));
  connect(ConditionedZoneTotalLoss.u2, FanSystemLoss.y) annotation (
    Line(points={{116,-6},{108,-6},{108,-19}},                    color = {0, 0, 127}));
  connect(ConditionedZoneTotalLoss.y, ConditionedZoneHeatGain) annotation (
    Line(points={{139,0},{158,0}},                          color = {0, 0, 127}));
  connect(UnconditionedZoneTotalLoss.y, UnconditionedZoneHeatGain) annotation (
    Line(points={{-17,80},{138,80}},     color = {0, 0, 127}));
  connect(ResistorLoss.u2, Load1_Power.power) annotation (
    Line(points={{102,42},{102,62},{6,62},{6,30},{12,30},{12,35}},                                     color = {0, 0, 127}));
  connect(ResistorLoss.u1, Load2_Power.power) annotation (
    Line(points={{114,42},{114,66},{2,66},{2,-10},{12,-10},{12,-5}},                                     color = {0, 0, 127}));
  connect(FanPowerSupply.PLoss, FanSystemLoss.u2) annotation (
    Line(points={{-88,-29},{-88,-24},{-110,-24},{-110,-88},{54,-88},{54,-56},{
          114,-56},{114,-42}},                                                                                    color = {0, 0, 127}));
  connect(FanPower1.power, FanSystemLoss.u1) annotation (
    Line(points={{-18,-73},{-18,-84},{50,-84},{50,-52},{102,-52},{102,-42}},            color = {0, 0, 127}));
  connect(UnconditionedZoneTotalLoss.u3, FanPower2.power) annotation (
    Line(points={{-40,72},{-52,72},{-52,-50},{-38,-50},{-38,-45}},            color = {0, 0, 127}));
  connect(PowerSupply1.PLoss, UnconditionedZoneTotalLoss.u1) annotation (
    Line(points={{-128,51},{-128,88},{-40,88}},        color = {0, 0, 127}));
  connect(PowerSupply2.PLoss, UnconditionedZoneTotalLoss.u2) annotation (
    Line(points={{-108,11},{-108,80},{-40,80}},      color = {0, 0, 127}));
  connect(FanPowerSupply.hPin_P, Vin.pin_p) annotation (
    Line(points={{-98,-34},{-168,-34},{-168,46},{-188,46},{-188,-10}},            color = {92, 53, 102}));
  connect(PowerSupply1.hPin_N, Vin.pin_n) annotation (
    Line(points={{-138,34},{-148,34},{-148,-46},{-188,-46},{-188,-30}},            color = {117, 80, 123}));
  connect(PowerSupply2.hPin_N, Vin.pin_n) annotation (
    Line(points={{-118,-6},{-148,-6},{-148,-46},{-188,-46},{-188,-30}},           color = {117, 80, 123}));
  connect(FanPowerSupply.hPin_N, Vin.pin_n) annotation (
    Line(points={{-98,-46},{-188,-46},{-188,-30}},                     color = {117, 80, 123}));
  connect(PowerSupply2.hPin_P, Vin.pin_p) annotation (
    Line(points={{-118,6},{-168,6},{-168,46},{-188,46},{-188,-10}},                                     color = {92, 53, 102}));
  connect(FanPower2.nv, GndDC.p) annotation (
    Line(points={{-28,-44},{-29,-44},{-29,-76},{74,-76},{74,-80}},          color = {0, 0, 255}));
  connect(Load2_Power.pv, Load2_Power.pc) annotation (
    Line(points={{22,16},{12,16},{12,6}},                 color = {0, 0, 255}));
  connect(DummyZoneTemp.y, add.u2) annotation (Line(points={{171,-56},{164,-56},
          {164,-44},{154,-44}}, color={0,0,127}));
  connect(add.y, ConditionedZoneAir.T) annotation (Line(points={{131,-38},{126,
          -38},{126,-80},{118,-80}}, color={0,0,127}));
  connect(sine.y, add.u1) annotation (Line(points={{169,-20},{162,-20},{162,-32},
          {154,-32}}, color={0,0,127}));
  annotation (
    uses(HPF(version = "0.1.0-beta"), Modelica(version = "3.2.3")),
    experiment(
      StopTime=86400,
      Interval=60,
      Tolerance=1e-06,
      __Dymola_fixedstepsize=1,
      __Dymola_Algorithm="Euler"),
  __OpenModelica_simulationFlags(lv = "LOG_STATS", nls = "newton", outputFormat = "mat", s = "dassl"),
  Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
  Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
  version = "");
end Bench_Scale_Exp_9;
