within HPF.Examples.ModelingValidation;
model Design_for_DC_Distributed_DC
  inner HPF.SystemDef systemDef(fs = 10e3, hrms = {i for i in 1:2:20}, numPh = 1) annotation (
    Placement(visible = true, transformation(origin = {-249.333, 262.667}, extent = {{-32.6667, -32.6667}, {32.6667, 23.3333}}, rotation = 0)));
  HPF.SinglePhase.Sources.VoltageSource input_source(start_v_re = {120, 0, 0, 0, 0, 0, 0, 0, 0, 0}, vArg = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, vMag = {120, 0, 0, 0, 0, 0, 0, 0, 0, 0})  annotation(
    Placement(visible = true, transformation(origin = {-362, 42}, extent = {{-36, -36}, {36, 36}}, rotation = -90)));
  HPF.SinglePhase.Components.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-276, -182}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  HPF.DC.Ground ground1 annotation(
    Placement(visible = true, transformation(origin = {69, -181}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  HPF.DC.Variable_DC_Load LED_1 annotation(
    Placement(visible = true, transformation(origin = {40, 192}, extent = {{-22, -22}, {22, 22}}, rotation = -90)));
  Modelica.Blocks.Sources.CombiTimeTable schedule(fileName = "/media/sf_Project_Codes/BEEAM/HPF/Data/load_profiles/schedule.txt", tableName = "schedule", tableOnFile = true)  annotation(
    Placement(visible = true, transformation(origin = {142, 256}, extent = {{-30, -30}, {30, 30}}, rotation = -90)));
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple PoE_switch(P_DCmin = 1.2, P_nom = 480, P_stby = 9.2, VAC_nom = 120, VDC_nom = 53, alpha = 0.022145, beta = 0.078036, gamma = -4.3962e-3)  annotation(
    Placement(visible = true, transformation(origin = {-190, 42}, extent = {{-42, -42}, {42, 42}}, rotation = 0)));
  HPF.DC.DC2DC_Converters.StepDown PoE_driver_1(modelData = igor_PoE_Driver)  annotation(
    Placement(visible = true, transformation(origin = {-23, 187}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
  parameter HPF.Data.ConverterModels.DC2DC_StepDown.Igor_PoE_Driver_53W igor_PoE_Driver annotation(
    Placement(visible = true, transformation(origin = {257, 249}, extent = {{-31, -31}, {31, 31}}, rotation = 0)));
  HPF.DC.DC2DC_Converters.StepDown PoE_driver_2(modelData = igor_PoE_Driver) annotation(
    Placement(visible = true, transformation(origin = {-23, 91}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
  HPF.DC.DC2DC_Converters.StepDown PoE_driver_3(modelData = igor_PoE_Driver) annotation(
    Placement(visible = true, transformation(origin = {-23, -19}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
  HPF.DC.DC2DC_Converters.StepDown PoE_driver_4(modelData = igor_PoE_Driver) annotation(
    Placement(visible = true, transformation(origin = {-23, -123}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
  HPF.DC.Variable_DC_Load LED_2 annotation(
    Placement(visible = true, transformation(origin = {40, 90}, extent = {{-22, -22}, {22, 22}}, rotation = -90)));
  HPF.DC.Variable_DC_Load LED_3 annotation(
    Placement(visible = true, transformation(origin = {40, -18}, extent = {{-22, -22}, {22, 22}}, rotation = -90)));
  HPF.DC.Variable_DC_Load LED_4 annotation(
    Placement(visible = true, transformation(origin = {40, -122}, extent = {{-22, -22}, {22, 22}}, rotation = -90)));
  HPF.Cables.NEC_CableModelDC PoE_cable_1(length = 5, wireGaugeDC = HPF.Types.WireGaugeDC.guage_POE_Patch)  annotation(
    Placement(visible = true, transformation(origin = {-86, 210}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
  HPF.Cables.NEC_CableModelDC PoE_cable_2(length = 5, wireGaugeDC = HPF.Types.WireGaugeDC.gauge_POE)  annotation(
    Placement(visible = true, transformation(origin = {-84, 114}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
  HPF.Cables.NEC_CableModelDC PoE_cable_3(length = 5, wireGaugeDC = HPF.Types.WireGaugeDC.gauge_POE)  annotation(
    Placement(visible = true, transformation(origin = {-90, -2}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
  HPF.Cables.NEC_CableModelDC PoE_cable_4(length = 5, wireGaugeDC = HPF.Types.WireGaugeDC.gauge_POE)  annotation(
    Placement(visible = true, transformation(origin = {-86, -100}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 0)  annotation(
    Placement(visible = true, transformation(origin = {-134, 174}, extent = {{-16, -16}, {16, 16}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 0) annotation(
    Placement(visible = true, transformation(origin = {-124, 92}, extent = {{-16, -16}, {16, 16}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor11(R = 0) annotation(
    Placement(visible = true, transformation(origin = {-122, 32}, extent = {{-16, 16}, {16, -16}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor111(R = 0) annotation(
    Placement(visible = true, transformation(origin = {-136, -86}, extent = {{-16, 16}, {16, -16}}, rotation = -90)));
  HPF.Cables.NEC_CableModel AC_cable(length = 60, wireGaugeAC = HPF.Types.WireGaugeAC.gauge_12)  annotation(
    Placement(visible = true, transformation(origin = {-293, 79}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
equation
  connect(ground.pin, input_source.pin_n) annotation(
    Line(points = {{-276, -166}, {-276, -79}, {-362, -79}, {-362, 6}}, color = {92, 53, 102}));
  connect(LED_1.n, ground1.p) annotation(
    Line(points = {{40, 170}, {70, 170}, {70, -168}}, color = {0, 0, 255}));
  connect(schedule.y[1], LED_1.u) annotation(
    Line(points = {{142, 224}, {52, 224}, {52, 192}}, color = {0, 0, 127}));
  connect(PoE_driver_1.p2, LED_1.p) annotation(
    Line(points = {{0, 210}, {21, 210}, {21, 214}, {40, 214}}, color = {0, 0, 255}));
  connect(PoE_driver_1.n2, LED_1.n) annotation(
    Line(points = {{0, 164}, {40, 164}, {40, 170}}, color = {0, 0, 255}));
  connect(input_source.pin_n, PoE_switch.hPin_N) annotation(
    Line(points = {{-362, 6}, {-255, 6}, {-255, 8}, {-232, 8}}, color = {117, 80, 123}));
  connect(PoE_switch.pin_n, PoE_driver_1.n1) annotation(
    Line(points = {{-148, 8}, {-68, 8}, {-68, 164}, {-46, 164}}, color = {0, 0, 255}));
  connect(PoE_switch.pin_n, PoE_driver_2.n1) annotation(
    Line(points = {{-148, 8}, {-68, 8}, {-68, 68}, {-46, 68}}, color = {0, 0, 255}));
  connect(PoE_switch.pin_n, PoE_driver_3.n1) annotation(
    Line(points = {{-148, 8}, {-68, 8}, {-68, -42}, {-46, -42}}, color = {0, 0, 255}));
  connect(PoE_switch.pin_n, PoE_driver_4.n1) annotation(
    Line(points = {{-148, 8}, {-68, 8}, {-68, -146}, {-46, -146}}, color = {0, 0, 255}));
  connect(PoE_switch.pin_n, ground1.p) annotation(
    Line(points = {{-148, 8}, {-128, 8}, {-128, -168}, {70, -168}}, color = {0, 0, 255}));
  connect(PoE_driver_2.p2, LED_2.p) annotation(
    Line(points = {{0, 114}, {40, 114}, {40, 112}}, color = {0, 0, 255}));
  connect(PoE_driver_2.n2, LED_2.n) annotation(
    Line(points = {{0, 68}, {40, 68}}, color = {0, 0, 255}));
  connect(PoE_driver_3.p2, LED_3.p) annotation(
    Line(points = {{0, 4}, {40, 4}}, color = {0, 0, 255}));
  connect(PoE_driver_3.n2, LED_3.n) annotation(
    Line(points = {{0, -42}, {19, -42}, {19, -40}, {40, -40}}, color = {0, 0, 255}));
  connect(PoE_driver_4.p2, LED_4.p) annotation(
    Line(points = {{0, -100}, {40, -100}}, color = {0, 0, 255}));
  connect(PoE_driver_4.n2, LED_4.n) annotation(
    Line(points = {{0, -146}, {20, -146}, {20, -144}, {40, -144}}, color = {0, 0, 255}));
  connect(LED_2.n, ground1.p) annotation(
    Line(points = {{40, 68}, {70, 68}, {70, -168}}, color = {0, 0, 255}));
  connect(LED_3.n, ground1.p) annotation(
    Line(points = {{40, -40}, {70, -40}, {70, -168}}, color = {0, 0, 255}));
  connect(LED_4.n, ground1.p) annotation(
    Line(points = {{40, -144}, {70, -144}, {70, -168}}, color = {0, 0, 255}));
  connect(schedule.y[1], LED_2.u) annotation(
    Line(points = {{142, 224}, {142, 90}, {52, 90}}, color = {0, 0, 127}));
  connect(schedule.y[1], LED_3.u) annotation(
    Line(points = {{142, 224}, {142, -18}, {52, -18}}, color = {0, 0, 127}));
  connect(schedule.y[1], LED_4.u) annotation(
    Line(points = {{142, 224}, {140, 224}, {140, -122}, {52, -122}}, color = {0, 0, 127}));
  connect(PoE_cable_1.n, PoE_driver_1.p1) annotation(
    Line(points = {{-62, 210}, {-46, 210}}, color = {0, 0, 255}));
  connect(PoE_cable_2.n, PoE_driver_2.p1) annotation(
    Line(points = {{-60, 114}, {-46, 114}}, color = {0, 0, 255}));
  connect(PoE_cable_3.n, PoE_driver_3.p1) annotation(
    Line(points = {{-66, -2}, {-54, -2}, {-54, 4}, {-46, 4}}, color = {0, 0, 255}));
  connect(PoE_cable_4.n, PoE_driver_4.p1) annotation(
    Line(points = {{-62, -100}, {-46, -100}}, color = {0, 0, 255}));
  connect(PoE_switch.pin_p, resistor.p) annotation(
    Line(points = {{-148, 76}, {-134, 76}, {-134, 158}}, color = {0, 0, 255}));
  connect(resistor.n, PoE_cable_1.p) annotation(
    Line(points = {{-134, 190}, {-136, 190}, {-136, 210}, {-110, 210}}, color = {0, 0, 255}));
  connect(PoE_switch.pin_p, resistor1.p) annotation(
    Line(points = {{-148, 76}, {-124, 76}}, color = {0, 0, 255}));
  connect(resistor1.n, PoE_cable_2.p) annotation(
    Line(points = {{-124, 108}, {-122, 108}, {-122, 114}, {-108, 114}}, color = {0, 0, 255}));
  connect(PoE_switch.pin_p, resistor11.p) annotation(
    Line(points = {{-148, 76}, {-122, 76}, {-122, 48}}, color = {0, 0, 255}));
  connect(resistor11.n, PoE_cable_3.p) annotation(
    Line(points = {{-122, 16}, {-122, -2}, {-114, -2}}, color = {0, 0, 255}));
  connect(PoE_switch.pin_p, resistor111.p) annotation(
    Line(points = {{-148, 76}, {-136, 76}, {-136, -70}}, color = {0, 0, 255}));
  connect(resistor111.n, PoE_cable_4.p) annotation(
    Line(points = {{-136, -102}, {-110, -102}, {-110, -100}}, color = {0, 0, 255}));
  connect(AC_cable.pin_n, PoE_switch.hPin_L) annotation(
    Line(points = {{-276, 80}, {-232, 80}, {-232, 76}}, color = {117, 80, 123}));
  connect(input_source.pin_p, AC_cable.pin_p) annotation(
    Line(points = {{-362, 78}, {-337, 78}, {-337, 80}, {-310, 80}}, color = {92, 53, 102}));
  annotation (
    Diagram(coordinateSystem(extent = {{-300, -300}, {300, 300}}, initialScale = 0.1)),
    Icon(coordinateSystem(extent = {{-300, -300}, {300, 300}}, initialScale = 0.1)),
    experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-10, Interval = 1),
    __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl", ls = "totalpivot", nls = "newton"),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian,newInst -d=initialization ");
end Design_for_DC_Distributed_DC;