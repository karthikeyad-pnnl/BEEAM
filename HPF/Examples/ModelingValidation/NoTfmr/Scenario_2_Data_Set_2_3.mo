within HPF.Examples.ModelingValidation.NoTfmr;

model Scenario_2_Data_Set_2_3
  HPF.SinglePhase.Components.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-172, -28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.SinglePhase.Components.Ground ground2 annotation(
    Placement(visible = true, transformation(origin = {-100, -102}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner HPF.SystemDef systemDef(fs = 10e3, hrms = {i for i in 1:2:20}) annotation(
    Placement(visible = true, transformation(origin = {-200, 50}, extent = {{-14, -14}, {14, 10}}, rotation = 0)));
  HPF.Sources.ThreePhase.VotlageSource voltageSource(vArg_phA = {6.2808, 1.3356, 5.1671, 3.2428, 0.52133, 4.9112, 1.4033, 5.2872, 2.7797, 3.4676}, vArg_phB = {2.0858, 0.69389, 2.1489, 3.5016, 4.0778, 3.5841, 3.5607, 4.1192, 4.9941, 4.4393}, vArg_phC = {4.1755, 0.6632, 5.9913, 4.8381, 3.7992, 0.89103, 5.0685, 3.071, 0.72683, 5.2035}, vMag_phA = {121.7072, 0.31681, 0.6334, 0.7985, 1.0105, 0.41401, 0.50139, 0.15983, 0.24518, 0.089198}, vMag_phB = {120.5151, 2.8247, 2.3865, 1.2257, 0.74308, 0.39997, 0.45536, 0.31732, 0.20532, 0.24204}, vMag_phC = {119.9592, 3.9741, 3.3892, 1.1801, 0.41086, 0.45951, 0.75226, 0.4302, 0.20971, 0.36991}) annotation(
    Placement(visible = true, transformation(origin = {-172, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.PowerElectronicsConverters.AC2DC_SinglePhase LED_Driver_2(V_Rect = 24, modelFileName = "HPF/PowerElectronicsConverters/AC2DC_ConverterModels/AC2DC_LED_Driver_2.mat") annotation(
    Placement(visible = true, transformation(origin = {182, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.PowerElectronicsConverters.AC2DC_SinglePhase Power_Supply_1(V_Rect = 48, modelFileName = "HPF/PowerElectronicsConverters/AC2DC_ConverterModels/AC2DC_Power_Supply_1.mat") annotation(
    Placement(visible = true, transformation(origin = {78, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.PowerElectronicsConverters.AC2DC_SinglePhase Laptop_Charger_3(V_Rect = 18.5, modelFileName = "HPF/PowerElectronicsConverters/AC2DC_ConverterModels/AC2DC_Laptop_Charger_3.mat") annotation(
    Placement(visible = true, transformation(origin = {80, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.DC.DC_Load Load_1(pwr = 200) annotation(
    Placement(visible = true, transformation(origin = {112, 40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(visible = true, transformation(origin = {112, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground3 annotation(
    Placement(visible = true, transformation(origin = {114, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.DC.DC_Load Laptop_3(pwr = 76.5815811228527) annotation(
    Placement(visible = true, transformation(origin = {114, -8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground4 annotation(
    Placement(visible = true, transformation(origin = {212, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.SinglePhase.Components.Ground ground6 annotation(
    Placement(visible = true, transformation(origin = {54, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.PowerElectronicsConverters.AC2DC_SinglePhase LED_Driver_3(V_Rect = 24, modelFileName = "HPF/PowerElectronicsConverters/AC2DC_ConverterModels/AC2DC_LED_Driver_3.mat") annotation(
    Placement(visible = true, transformation(origin = {82, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.DC.DC_Load LED_2(pwr = 27.6755775403932) annotation(
    Placement(visible = true, transformation(origin = {212, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground8 annotation(
    Placement(visible = true, transformation(origin = {108, -94}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.PowerElectronicsConverters.AC2DC_SinglePhase LED_Driver_1(V_Rect = 24, modelFileName = "HPF/PowerElectronicsConverters/AC2DC_ConverterModels/AC2DC_LED_Driver_1.mat") annotation(
    Placement(visible = true, transformation(origin = {80, 88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.DC.DC_Load LED_3(pwr = 27.8213281898134) annotation(
    Placement(visible = true, transformation(origin = {108, -68}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  HPF.DC.DC_Load LED_1(pwr = 29.0041263028587) annotation(
    Placement(visible = true, transformation(origin = {112, 84}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground10 annotation(
    Placement(visible = true, transformation(origin = {112, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.PowerElectronicsConverters.AC2DC_SinglePhase Laptop_Charger_4(V_Rect = 18.5, modelFileName = "HPF/PowerElectronicsConverters/AC2DC_ConverterModels/AC2DC_Laptop_Charger_4.mat") annotation(
    Placement(visible = true, transformation(origin = {180, -78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.PowerElectronicsConverters.AC2DC_SinglePhase Laptop_Charger_5(V_Rect = 18.5, modelFileName = "HPF/PowerElectronicsConverters/AC2DC_ConverterModels/AC2DC_Laptop_Charger_5.mat") annotation(
    Placement(visible = true, transformation(origin = {74, -160}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.PowerElectronicsConverters.AC2DC_SinglePhase Power_Supply_2(V_Rect = 48, modelFileName = "HPF/PowerElectronicsConverters/AC2DC_ConverterModels/AC2DC_Power_Supply_2.mat") annotation(
    Placement(visible = true, transformation(origin = {182, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.PowerElectronicsConverters.AC2DC_SinglePhase Power_Supply_3(V_Rect = 48, modelFileName = "HPF/PowerElectronicsConverters/AC2DC_ConverterModels/AC2DC_Power_Supply_3.mat") annotation(
    Placement(visible = true, transformation(origin = {78, -112}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.DC.DC_Load Load_2(pwr = 423.648043533652) annotation(
    Placement(visible = true, transformation(origin = {214, -36}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground12 annotation(
    Placement(visible = true, transformation(origin = {214, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground13 annotation(
    Placement(visible = true, transformation(origin = {108, -142}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.DC.DC_Load dC_Load(pwr = 638.8808) annotation(
    Placement(visible = true, transformation(origin = {108, -116}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  HPF.DC.DC_Load dC_Load1(pwr = 75.8696686978902) annotation(
    Placement(visible = true, transformation(origin = {214, -82}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground16 annotation(
    Placement(visible = true, transformation(origin = {214, -108}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.SinglePhase.Components.Ground ground17 annotation(
    Placement(visible = true, transformation(origin = {152, -96}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground18 annotation(
    Placement(visible = true, transformation(origin = {110, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.DC.DC_Load dC_Load2(pwr = 77.4410183194939) annotation(
    Placement(visible = true, transformation(origin = {110, -164}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  HPF.SinglePhase.Components.Ground ground19 annotation(
    Placement(visible = true, transformation(origin = {48, -176}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.Sensors.VoltageSensor vMsr_Sec_phB annotation(
    Placement(visible = true, transformation(origin = {-82, -62}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  HPF.Sensors.VoltageSensor vMsr_Sec_phA annotation(
    Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  HPF.Sensors.VoltageSensor vMsr_Sec_phC annotation(
    Placement(visible = true, transformation(origin = {-64, -40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  HPF.Sensors.CurrentSensor iMsr_Sec_phA annotation(
    Placement(visible = true, transformation(origin = {-38, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.Sensors.CurrentSensor iMsr_Sec_phB annotation(
    Placement(visible = true, transformation(origin = {-6, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.Sensors.CurrentSensor iMsr_Sec_phC annotation(
    Placement(visible = true, transformation(origin = {-40, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(voltageSource.pinN, ground.pin) annotation(
    Line(points = {{-172, -22}, {-172, -28}}, color = {117, 80, 123}));
  connect(Power_Supply_1.pin_p, Load_1.p) annotation(
    Line(points = {{88, 50}, {112, 50}}, color = {0, 0, 255}));
  connect(ground1.p, Load_1.n) annotation(
    Line(points = {{112, 22}, {112, 30}}, color = {0, 0, 255}));
  connect(Laptop_Charger_3.pin_n, Laptop_3.n) annotation(
    Line(points = {{90, -10}, {104, -10}, {104, -18}, {114, -18}}, color = {0, 0, 255}));
  connect(ground3.p, Laptop_3.n) annotation(
    Line(points = {{114, -24}, {114, -18}}, color = {0, 0, 255}));
  connect(Laptop_Charger_3.pin_p, Laptop_3.p) annotation(
    Line(points = {{90, 2}, {114, 2}}, color = {0, 0, 255}));
  connect(Laptop_Charger_3.hPin_N, ground6.pin) annotation(
    Line(points = {{70, -10}, {54, -10}, {54, -22}}, color = {117, 80, 123}));
  connect(LED_Driver_2.pin_p, LED_2.p) annotation(
    Line(points = {{192, 20}, {212, 20}}, color = {0, 0, 255}));
  connect(ground4.p, LED_2.n) annotation(
    Line(points = {{212, -4}, {212, 0}}, color = {0, 0, 255}));
  connect(LED_Driver_3.pin_p, LED_3.p) annotation(
    Line(points = {{92, -58}, {108, -58}}, color = {0, 0, 255}));
  connect(LED_Driver_3.pin_n, LED_3.n) annotation(
    Line(points = {{92, -70}, {104, -70}, {104, -74}, {108, -74}, {108, -78}}, color = {0, 0, 255}));
  connect(ground8.p, LED_3.n) annotation(
    Line(points = {{108, -84}, {108, -78}}, color = {0, 0, 255}));
  connect(LED_Driver_1.pin_p, LED_1.p) annotation(
    Line(points = {{90, 94}, {112, 94}}, color = {0, 0, 255}));
  connect(LED_Driver_1.pin_n, LED_1.n) annotation(
    Line(points = {{90, 82}, {103.5, 82}, {103.5, 74}, {112, 74}}, color = {0, 0, 255}));
  connect(ground10.p, LED_1.n) annotation(
    Line(points = {{112, 68}, {112, 74}}, color = {0, 0, 255}));
  connect(Load_2.n, Power_Supply_2.pin_n) annotation(
    Line(points = {{214, -46}, {214, -42}, {206, -42}, {206, -38}, {192, -38}}, color = {0, 0, 255}));
  connect(Power_Supply_2.pin_p, Load_2.p) annotation(
    Line(points = {{192, -26}, {214, -26}}, color = {0, 0, 255}));
  connect(Load_2.n, ground12.p) annotation(
    Line(points = {{214, -46}, {214, -52}}, color = {0, 0, 255}));
  connect(Power_Supply_3.pin_p, dC_Load.p) annotation(
    Line(points = {{88, -106}, {108, -106}}, color = {0, 0, 255}));
  connect(ground13.p, dC_Load.n) annotation(
    Line(points = {{108, -132}, {108, -126}}, color = {0, 0, 255}));
  connect(LED_Driver_2.pin_n, LED_2.n) annotation(
    Line(points = {{192, 8}, {210, 8}, {210, 4}, {212, 4}, {212, 0}}, color = {0, 0, 255}));
  connect(Laptop_Charger_5.pin_p, dC_Load2.p) annotation(
    Line(points = {{84, -154}, {110, -154}}, color = {0, 0, 255}));
  connect(Laptop_Charger_5.pin_n, dC_Load2.n) annotation(
    Line(points = {{84, -166}, {100, -166}, {100, -174}, {110, -174}}, color = {0, 0, 255}));
  connect(ground18.p, dC_Load2.n) annotation(
    Line(points = {{110, -180}, {110, -174}}, color = {0, 0, 255}));
  connect(ground19.pin, Laptop_Charger_5.hPin_N) annotation(
    Line(points = {{48, -176}, {48, -166}, {64, -166}}, color = {92, 53, 102}));
  connect(Laptop_Charger_4.hPin_N, ground17.pin) annotation(
    Line(points = {{170, -84}, {169, -84}, {169, -96}, {152, -96}}, color = {117, 80, 123}));
  connect(Laptop_Charger_4.pin_p, dC_Load1.p) annotation(
    Line(points = {{190, -72}, {214, -72}}, color = {0, 0, 255}));
  connect(Laptop_Charger_4.pin_n, dC_Load1.n) annotation(
    Line(points = {{190, -84}, {210, -84}, {210, -88}, {214, -88}, {214, -92}}, color = {0, 0, 255}));
  connect(ground16.p, dC_Load1.n) annotation(
    Line(points = {{214, -98}, {214, -92}}, color = {0, 0, 255}));
  connect(Power_Supply_1.pin_n, Load_1.n) annotation(
    Line(points = {{88, 38}, {108, 38}, {108, 34}, {112, 34}, {112, 30}}, color = {0, 0, 255}));
  connect(Power_Supply_3.pin_n, dC_Load.n) annotation(
    Line(points = {{88, -118}, {98, -118}, {98, -126}, {108, -126}}, color = {0, 0, 255}));
  connect(LED_Driver_1.hPin_N, ground6.pin) annotation(
    Line(points = {{70, 82}, {54, 82}, {54, -22}}, color = {117, 80, 123}));
  connect(Power_Supply_1.hPin_N, ground6.pin) annotation(
    Line(points = {{68, 38}, {54, 38}, {54, -22}}, color = {117, 80, 123}));
  connect(LED_Driver_2.hPin_N, ground17.pin) annotation(
    Line(points = {{172, 8}, {152, 8}, {152, -96}}, color = {117, 80, 123}));
  connect(Power_Supply_2.hPin_N, ground17.pin) annotation(
    Line(points = {{172, -38}, {152, -38}, {152, -96}}, color = {117, 80, 123}));
  connect(LED_Driver_3.hPin_N, ground19.pin) annotation(
    Line(points = {{72, -70}, {48, -70}, {48, -176}}, color = {117, 80, 123}));
  connect(Power_Supply_3.hPin_N, ground19.pin) annotation(
    Line(points = {{68, -118}, {48, -118}, {48, -176}}, color = {117, 80, 123}));
  connect(vMsr_Sec_phA.pin_n, ground2.pin) annotation(
    Line(points = {{-100, -50}, {-100, -102}}, color = {117, 80, 123}));
  connect(vMsr_Sec_phB.pin_n, ground2.pin) annotation(
    Line(points = {{-82, -72}, {-100, -72}, {-100, -102}}, color = {117, 80, 123}));
  connect(vMsr_Sec_phC.pin_n, ground2.pin) annotation(
    Line(points = {{-64, -50}, {-64, -78}, {-100, -78}, {-100, -102}}, color = {117, 80, 123}));
  connect(iMsr_Sec_phA.pin_n, LED_Driver_1.hPin_P) annotation(
    Line(points = {{-28, 2}, {42, 2}, {42, 94}, {70, 94}}, color = {117, 80, 123}));
  connect(iMsr_Sec_phA.pin_n, Power_Supply_1.hPin_P) annotation(
    Line(points = {{-28, 2}, {42, 2}, {42, 50}, {68, 50}}, color = {117, 80, 123}));
  connect(Laptop_Charger_3.hPin_P, iMsr_Sec_phA.pin_n) annotation(
    Line(points = {{70, 2}, {-28, 2}}, color = {92, 53, 102}));
  connect(iMsr_Sec_phB.pin_n, LED_Driver_2.hPin_P) annotation(
    Line(points = {{4, -12}, {28, -12}, {28, -44}, {140, -44}, {140, 20}, {172, 20}, {172, 20}}, color = {117, 80, 123}));
  connect(iMsr_Sec_phB.pin_n, Power_Supply_2.hPin_P) annotation(
    Line(points = {{4, -12}, {28, -12}, {28, -44}, {140, -44}, {140, -26}, {172, -26}, {172, -26}}, color = {117, 80, 123}));
  connect(Laptop_Charger_4.hPin_P, iMsr_Sec_phB.pin_n) annotation(
    Line(points = {{170, -72}, {140, -72}, {140, -44}, {28, -44}, {28, -12}, {4, -12}, {4, -12}}, color = {92, 53, 102}));
  connect(iMsr_Sec_phC.pin_n, LED_Driver_3.hPin_P) annotation(
    Line(points = {{-30, -24}, {4, -24}, {4, -58}, {72, -58}, {72, -58}}, color = {117, 80, 123}));
  connect(iMsr_Sec_phC.pin_n, Power_Supply_3.hPin_P) annotation(
    Line(points = {{-30, -24}, {4, -24}, {4, -106}, {68, -106}, {68, -106}}, color = {117, 80, 123}));
  connect(iMsr_Sec_phC.pin_n, Laptop_Charger_5.hPin_P) annotation(
    Line(points = {{-30, -24}, {4, -24}, {4, -154}, {64, -154}, {64, -154}}, color = {117, 80, 123}));
  connect(voltageSource.pinP_phA, iMsr_Sec_phA.pin_p) annotation(
    Line(points = {{-162, -6}, {-106, -6}, {-106, 2}, {-48, 2}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phB, iMsr_Sec_phB.pin_p) annotation(
    Line(points = {{-162, -12}, {-16, -12}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phC, iMsr_Sec_phC.pin_p) annotation(
    Line(points = {{-162, -20}, {-74, -20}, {-74, -22}, {-50, -22}, {-50, -24}}, color = {92, 53, 102}));
  connect(vMsr_Sec_phA.pin_p, voltageSource.pinP_phA) annotation(
    Line(points = {{-100, -30}, {-100, -6}, {-162, -6}}, color = {92, 53, 102}));
  connect(vMsr_Sec_phB.pin_p, voltageSource.pinP_phB) annotation(
    Line(points = {{-82, -52}, {-82, -12}, {-162, -12}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phC, vMsr_Sec_phC.pin_p) annotation(
    Line(points = {{-162, -20}, {-64, -20}, {-64, -30}}, color = {92, 53, 102}));
  annotation(
    Diagram(coordinateSystem(extent = {{-230, -230}, {230, 230}}, initialScale = 0.1), graphics = {Text(origin = {-26, -20}, lineColor = {28, 108, 200}, extent = {{-182, 192}, {146, 164}}, textString = "Scenario 2 | Data Set 2.3
LLoad Phase a-n	Total Load - 300W		Load Bank 1 (78W), LED 1 (22W), Resistor 2 (200W)
Load Phase b-n	Total Load - 500W		Load Bank 2 (78W), LED 2 (22W), Resistor 3 (400W)
Load Phase c-n	Total Load - 700W		Load Bank 3 (78W), LED 3 (22W), Resistor 4 (600W)", fontSize = 9, horizontalAlignment = TextAlignment.Left)}),
    Icon(coordinateSystem(extent = {{-230, -230}, {230, 230}})),
    experiment(StartTime = 0, StopTime = 0.15, Tolerance = 1e-10, Interval = 0.0005),
    __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl", ls = "totalpivot", nls = "newton"));
end Scenario_2_Data_Set_2_3;