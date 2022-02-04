within HPF.Examples.ModelingValidation;

model Scenario_1_Data_Set_1_5
  .HPF.SinglePhase.Components.Ground ground annotation (
    Placement(visible = true, transformation(origin = {-138, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner .HPF.SystemDef systemDef(fs = 10e3, hrms = {i for i in 1:2:20}) annotation (
    Placement(visible = true, transformation(origin = {0.0,0.0}, extent = {{-211.52810972282973,40.69019166614595},{-180.47189027717027,67.30980833385405}}, rotation = 0.0)));
  .HPF.Sources.ThreePhase.VotlageSource voltageSource(vArg_phA = {0.52196, 5.0309, 3.137, 5.1211, 0.88185, 0.5405, 2.7381, 3.3571, 3.1032, 1.0556, 4.7534, 0.08957, 4.2676, 4.1244, 4.4068}, vArg_phB = {4.7098, 2.6393, 0.15983, 3.0248, 0.54992, 2.8356, 0.30425, 1.6224, 5.1955, 4.6578, 1.421, 1.561, 2.3545, 1.471, 0.6687}, vArg_phC = {2.616, 0.41259, 4.8314, 0.56289, 3.7924, 4.8133, 4.8348, -0.2768, 0.88781, 2.6372, 4.1405, 4.1314, 0.31627, 0.0998, 2.1076}, vMag_phA = {281.6099,0.52895,0.47049,0.73987,0.12572,0.73742,0.42769,0.058304,0.29207,0.058748,0.015748,0.02911,0.017013,0.0086381,0.017564}, vMag_phB = {281.5887,0.66547,0.46821,1.1624,0.27892,0.72691,0.37598,0.030611,0.254,0.065578,0.021447,0.041925,0.013833,0.0068935,0.013253}, vMag_phC = {281.39,0.46521,0.075759,1.0168,0.39967,0.60233,0.28322,0.061309,0.27537,0.028665,0.0058585,0.053376,0.017543,0.0048111,0.010129},vSrc_phA(start_v_re(fixed = true),start_v_im(fixed = true),start_i_re(fixed = true),start_i_im(fixed = true))) annotation (
    Placement(visible = true, transformation(origin = {-138, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .HPF.SinglePhase.Components.Ground ground2 annotation (
    Placement(visible = true, transformation(origin = {-70, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .HPF.Transformers.ThreePhase.Symmetric.D1Y deltaWye(Rc = 15117.7, Rp = 8.333, Rs = 0.14404, Xm = 2331.1, Xp = 3.3002, Xs = 0.6197,VSecRated = 208) annotation (
    Placement(transformation(extent = {{-92, -28}, {-72, -8}})));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_2(P1(start = 28), S1(start = 28), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/Mean-Well-APV-25-24-2of3.mat", nomP = 25.2, nomV = 120, vAngle(displayUnit = "rad") = -120) annotation (
    Placement(visible = true, transformation(origin = {178, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl Power_Supply_1(P1(start = 1e-2), S1(start = 1e-2), P_DCmin = 8, P_stby = 23.34,V_Rect = 48, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/Mean-Well-RSP-1000-48.mat", nomP = 1000, nomV = 120) annotation (
    Placement(visible = true, transformation(origin = {74, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl Laptop_Charger_3(P1(start = 72), S1(start = 72), P_DCmin = 2, P_stby = 0.44,V_Rect = 18.5, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/HP-391174-001.mat", nomP = 120, nomV = 120) annotation (
    Placement(visible = true, transformation(origin = {76, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .Modelica.Electrical.Analog.Basic.Ground ground1 annotation (
    Placement(visible = true, transformation(origin = {108, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .Modelica.Electrical.Analog.Basic.Ground ground3 annotation (
    Placement(visible = true, transformation(origin = {110, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .Modelica.Electrical.Analog.Basic.Ground ground4 annotation (
    Placement(visible = true, transformation(origin = {208, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .HPF.SinglePhase.Components.Ground ground6 annotation (
    Placement(visible = true, transformation(origin = {50, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_3(P1(start = 28), S1(start = 28), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/Mean-Well-APV-25-24-3of3.mat", nomP = 25.2, nomV = 120, vAngle = 2.094395102393195) annotation (
    Placement(visible = true, transformation(origin = {78, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .Modelica.Electrical.Analog.Basic.Ground ground8 annotation (
    Placement(visible = true, transformation(origin = {104, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_1(P1(start = 28), S1(start = 28), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/Mean-Well-APV-25-24-1of3.mat", nomP = 25.2, nomV = 120) annotation (
    Placement(visible = true, transformation(origin = {0.0,0.0}, extent = {{68.59998475249006,115.11998170298816},{88.59998475249006,135.11998170298816}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground10 annotation (
    Placement(visible = true, transformation(origin = {108, 92}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl Laptop_Charger_4(P1(start = 72), P_DCmin = 2, P_stby = 0.33, S1(start = 72),V_Rect = 18.5, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/HP-PA-1900-15C2.mat", nomP = 90, nomV = 120, vAngle = -2.094395102393195) annotation (
    Placement(visible = true, transformation(origin = {176, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl Laptop_Charger_5(P1(start = 70), P_DCmin = 2, P_stby = 0.27, S1(start = 70),V_Rect = 18.5, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/HP-PA-1121-12H.mat", nomP = 120, nomV = 120, vAngle = 2.094395102393195) annotation (
    Placement(visible = true, transformation(origin = {70, -126}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl Power_Supply_2(P1(start = 1e-2), P_DCmin = 10, P_stby = 4.89, S1(start = 1e-2),V_Rect = 48, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/Xunbuma-T-1000-48.mat", nomP = 1000, nomV = 120, vAngle = -2.094395102393195) annotation (
    Placement(visible = true, transformation(origin = {178, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl Power_Supply_3(P1(start = 1e-2), P_DCmin = 10, P_stby = 17.7, S1(start = 1e-2), V_Rect = 48, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/Mean-Well-SE-1000-48.mat", nomP = 1000, nomV = 120, vAngle = 2.094395102393195) annotation (
    Placement(visible = true, transformation(origin = {74, -78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .Modelica.Electrical.Analog.Basic.Ground ground12 annotation (
    Placement(visible = true, transformation(origin = {210, -28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .Modelica.Electrical.Analog.Basic.Ground ground13 annotation (
    Placement(visible = true, transformation(origin = {104, -108}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .Modelica.Electrical.Analog.Basic.Ground ground16 annotation (
    Placement(visible = true, transformation(origin = {210, -74}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .HPF.SinglePhase.Components.Ground ground17 annotation (
    Placement(visible = true, transformation(origin = {148, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  .HPF.SinglePhase.Components.Ground ground19 annotation (
    Placement(visible = true, transformation(origin = {44, -142}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    .HPF.DC.Variable_DC_Load variable_DC_Load annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {115.43429662074213,126.50266411117445},rotation = -90.0)));
    .HPF.DC.Variable_DC_Load variable_DC_Load2 annotation(Placement(transformation(extent = {{-9.999999999999986,-10.0},{9.999999999999986,10.0}},origin = {119.12336463320695,75.03289165433502},rotation = -90.0)));
    .HPF.DC.Variable_DC_Load variable_DC_Load3 annotation(Placement(transformation(extent = {{-10.0,-10.000000000000004},{10.0,10.000000000000004}},origin = {112.50155499122488,27.586425933693643},rotation = -90.0)));
    .HPF.DC.Variable_DC_Load variable_DC_Load4 annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {212.1743581707119,44.94254956934127},rotation = -90.0)));
    .HPF.DC.Variable_DC_Load variable_DC_Load5 annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {220.58057549968285,0.10939048149623787},rotation = -90.0)));
    .HPF.DC.Variable_DC_Load variable_DC_Load6 annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {218.71252720435595,-48.771206579557},rotation = -90.0)));
    .HPF.DC.Variable_DC_Load variable_DC_Load7 annotation(Placement(transformation(extent = {{-10.0,-9.999999999999986},{10.0,9.999999999999986}},origin = {110.95216351252105,-126.92386485574441},rotation = -90.0)));
    .HPF.DC.Variable_DC_Load variable_DC_Load8 annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {108.77277383463968,-78.04326779469115},rotation = -90.0)));
    .HPF.DC.Variable_DC_Load variable_DC_Load9 annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {110.64082212996652,-31.964743176628176},rotation = -90.0)));
    .Modelica.Blocks.Sources.Ramp ramp(height = 30,duration = 5,offset = 1) annotation(Placement(transformation(extent = {{180,150},{200,170}},origin = {0,0},rotation = 0)));
    .Modelica.Blocks.Sources.Ramp ramp2(height = 1000,duration = 5,offset = 1) annotation(Placement(transformation(extent = {{294.0,118.0},{314.0,138.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Ramp ramp3(height = 120,duration = 5,offset = 1) annotation(Placement(transformation(extent = {{284,-116},{304,-96}},origin = {0,0},rotation = 0)));
    .Modelica.Blocks.Math.MultiSum multiSum(nu = 9) annotation(Placement(transformation(extent = {{118.0,172.0},{130.0,184.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Math.Division division annotation(Placement(transformation(extent = {{210,220},{230,240}},origin = {0,0},rotation = 0)));
    .Modelica.Blocks.Math.Gain gain(k = -1) annotation(Placement(transformation(extent = {{-108,108},{-88,128}},origin = {0,0},rotation = 0)));
    .Modelica.Blocks.Math.Gain gain2(k = 3) annotation(Placement(transformation(extent = {{412.0,154.0},{432.0,174.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Math.Gain gain3(k = 3) annotation(Placement(transformation(extent = {{430.0,106.0},{450.0,126.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Math.Gain gain4(k = 3) annotation(Placement(transformation(extent = {{458.0,2.0},{478.0,22.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Math.MultiSum multiSum2(nu = 3) annotation(Placement(transformation(extent = {{512.0,148.0},{524.0,160.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Electrical.Analog.Basic.Ground ground5 annotation(Placement(visible = true,transformation(origin = {0.0,0.0},extent = {{100.0,-172.0},{120.0,-152.0}},rotation = 0.0)));
equation
  connect(voltageSource.pinN, ground.pin) annotation (
    Line(points = {{-138, -30.75}, {-138, -42.75}}, color = {117, 80, 123}));
  connect(deltaWye.pinSec_N, ground2.pin) annotation (
    Line(points = {{-72, -30}, {-70, -30}, {-70, -44.75}}, color = {117, 80, 123}));
  connect(voltageSource.pinP_phC, deltaWye.pinPrim_C) annotation (
    Line(points = {{-125.5, -28}, {-92, -28}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phB, deltaWye.pinPrim_B) annotation (
    Line(points = {{-125.5, -18}, {-92, -18}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, deltaWye.pinPrim_A) annotation (
    Line(points = {{-125.5, -8}, {-92, -8}}, color = {92, 53, 102}));
  connect(Laptop_Charger_3.hPin_N, ground6.pin) annotation (
    Line(points = {{66, 24}, {50, 24}, {50, 23.25}}, color = {117, 80, 123}));
  connect(ground19.pin, Laptop_Charger_5.hPin_N) annotation (
    Line(points = {{44, -130.75}, {44, -132}, {60, -132}}, color = {92, 53, 102}));
  connect(Laptop_Charger_4.hPin_N, ground17.pin) annotation (
    Line(points = {{166, -50}, {165, -50}, {165, -50.75}, {148, -50.75}}, color = {117, 80, 123}));
  connect(LED_Driver_1.hPin_N, ground6.pin) annotation (
    Line(points = {{68.59998475249006,117.11998170298816},{50,117.11998170298816},{50,23.25}}, color = {117, 80, 123}));
  connect(Power_Supply_1.hPin_N, ground6.pin) annotation (
    Line(points = {{64, 72}, {50, 72}, {50, 23.25}}, color = {117, 80, 123}));
  connect(LED_Driver_2.hPin_N, ground17.pin) annotation (
    Line(points = {{168, 42}, {148, 42}, {148, -50.75}}, color = {117, 80, 123}));
  connect(Power_Supply_2.hPin_N, ground17.pin) annotation (
    Line(points = {{168, -4}, {148, -4}, {148, -50.75}}, color = {117, 80, 123}));
  connect(LED_Driver_3.hPin_N, ground19.pin) annotation (
    Line(points = {{68, -36}, {44, -36}, {44, -130.75}}, color = {117, 80, 123}));
  connect(Power_Supply_3.hPin_N, ground19.pin) annotation (
    Line(points = {{64, -84}, {44, -84}, {44, -130.75}}, color = {117, 80, 123}));
  connect(deltaWye.pinSec_A, LED_Driver_1.hPin_P) annotation (
    Line(points = {{-72,-6},{34,-6},{34,133.11998170298816},{68.59998475249006,133.11998170298816}}, color = {92, 53, 102}));
  connect(deltaWye.pinSec_A, Power_Supply_1.hPin_P) annotation (
    Line(points = {{-72, -6}, {34, -6}, {34, 84}, {64, 84}}, color = {92, 53, 102}));
  connect(Laptop_Charger_3.hPin_P, LED_Driver_1.hPin_P) annotation (
    Line(points = {{66,36},{34,36},{34,133.11998170298816},{68.59998475249006,133.11998170298816}}, color = {92, 53, 102}));
  connect(deltaWye.pinSec_B, LED_Driver_2.hPin_P) annotation (
    Line(points = {{-72, -14}, {132, -14}, {132, 54}, {168, 54}}, color = {92, 53, 102}));
  connect(Power_Supply_2.hPin_P, LED_Driver_2.hPin_P) annotation (
    Line(points = {{168, 8}, {132, 8}, {132, 54}, {168, 54}}, color = {92, 53, 102}));
  connect(Laptop_Charger_4.hPin_P, LED_Driver_2.hPin_P) annotation (
    Line(points = {{166, -38}, {132, -38}, {132, 54}, {168, 54}}, color = {92, 53, 102}));
  connect(deltaWye.pinSec_C, LED_Driver_3.hPin_P) annotation (
    Line(points = {{-72, -22}, {-28, -22}, {-28, -24}, {68, -24}}, color = {92, 53, 102}));
  connect(Power_Supply_3.hPin_P, LED_Driver_3.hPin_P) annotation (
    Line(points = {{64, -72}, {28, -72}, {28, -24}, {68, -24}}, color = {92, 53, 102}));
  connect(Laptop_Charger_5.hPin_P, LED_Driver_3.hPin_P) annotation (
    Line(points = {{60,-120},{50,-120},{50,-114},{-60,-114},{-60,-24},{68,-24}}, color = {92, 53, 102}));
    connect(LED_Driver_1.pin_p,variable_DC_Load.p) annotation(Line(points = {{88.59998475249006,133.11998170298816},{94.59998475249006,133.11998170298816},{94.59998475249006,142.50266411117445},{115.43429662074213,142.50266411117445},{115.43429662074213,136.50266411117445}},color = {0,0,255}));
    connect(LED_Driver_1.pin_n,variable_DC_Load.n) annotation(Line(points = {{88.59998475249006,117.11998170298816},{94.59998475249006,117.11998170298816},{94.59998475249006,110.50266411117445},{115.43429662074213,110.50266411117445},{115.43429662074213,116.50266411117445}},color = {0,0,255}));
    connect(ground10.p,variable_DC_Load.n) annotation(Line(points = {{108,102},{108,109.25133205558723},{115.43429662074213,109.25133205558723},{115.43429662074213,116.50266411117445}},color = {0,0,255}));
    connect(Power_Supply_1.pin_p,variable_DC_Load2.p) annotation(Line(points = {{84,86},{90,86},{90,91.032891654335},{119.12336463320695,91.032891654335},{119.12336463320695,85.032891654335}},color = {0,0,255}));
    connect(Power_Supply_1.pin_n,variable_DC_Load2.n) annotation(Line(points = {{84,70},{90,70},{90,59.03289165433503},{119.12336463320695,59.03289165433503},{119.12336463320695,65.03289165433503}},color = {0,0,255}));
    connect(ground1.p,variable_DC_Load2.n) annotation(Line(points = {{108,56},{108,60.516445827167516},{119.12336463320695,60.516445827167516},{119.12336463320695,65.03289165433503}},color = {0,0,255}));
    connect(Laptop_Charger_3.pin_p,variable_DC_Load3.p) annotation(Line(points = {{86,38},{92,38},{92,43.58642593369365},{112.50155499122488,43.58642593369365},{112.50155499122488,37.58642593369365}},color = {0,0,255}));
    connect(Laptop_Charger_3.pin_n,variable_DC_Load3.n) annotation(Line(points = {{86,22},{92,22},{92,11.586425933693643},{112.50155499122488,11.586425933693643},{112.50155499122488,17.586425933693643}},color = {0,0,255}));
    connect(ground3.p,variable_DC_Load3.n) annotation(Line(points = {{110,2},{110,9.793212966846822},{112.50155499122488,9.793212966846822},{112.50155499122488,17.586425933693643}},color = {0,0,255}));
    connect(LED_Driver_2.pin_p,variable_DC_Load4.p) annotation(Line(points = {{188,56},{194,56},{194,60.94254956934127},{212.1743581707119,60.94254956934127},{212.1743581707119,54.94254956934127}},color = {0,0,255}));
    connect(LED_Driver_2.pin_n,variable_DC_Load4.n) annotation(Line(points = {{188,40},{194,40},{194,28.942549569341267},{212.1743581707119,28.942549569341267},{212.1743581707119,34.94254956934127}},color = {0,0,255}));
    connect(ground4.p,variable_DC_Load4.n) annotation(Line(points = {{208,30},{208,32.47127478467063},{212.1743581707119,32.47127478467063},{212.1743581707119,34.94254956934127}},color = {0,0,255}));
    connect(Power_Supply_2.pin_p,variable_DC_Load5.p) annotation(Line(points = {{188,10},{194,10},{194,16.109390481496238},{220.58057549968285,16.109390481496238},{220.58057549968285,10.109390481496238}},color = {0,0,255}));
    connect(Power_Supply_2.pin_n,variable_DC_Load5.n) annotation(Line(points = {{188,-6},{194,-6},{194,-15.890609518503762},{220.58057549968285,-15.890609518503762},{220.58057549968285,-9.890609518503762}},color = {0,0,255}));
    connect(ground12.p,variable_DC_Load5.n) annotation(Line(points = {{210,-18},{210,-13.945304759251881},{220.58057549968285,-13.945304759251881},{220.58057549968285,-9.890609518503762}},color = {0,0,255}));
    connect(Laptop_Charger_4.pin_p,variable_DC_Load6.p) annotation(Line(points = {{186,-36},{192,-36},{192,-32.771206579557},{218.71252720435595,-32.771206579557},{218.71252720435595,-38.771206579557}},color = {0,0,255}));
    connect(Laptop_Charger_4.pin_n,variable_DC_Load6.n) annotation(Line(points = {{186,-52},{192,-52},{192,-64.771206579557},{218.71252720435595,-64.771206579557},{218.71252720435595,-58.771206579557}},color = {0,0,255}));
    connect(ground16.p,variable_DC_Load6.n) annotation(Line(points = {{210,-64},{210,-61.3856032897785},{218.71252720435595,-61.3856032897785},{218.71252720435595,-58.771206579557}},color = {0,0,255}));
    connect(LED_Driver_3.pin_p,variable_DC_Load9.p) annotation(Line(points = {{88,-22},{94,-22},{94,-15.964743176628176},{110.64082212996652,-15.964743176628176},{110.64082212996652,-21.964743176628176}},color = {0,0,255}));
    connect(LED_Driver_3.pin_n,variable_DC_Load9.n) annotation(Line(points = {{88,-38},{94,-38},{94,-47.964743176628176},{110.64082212996652,-47.964743176628176},{110.64082212996652,-41.964743176628176}},color = {0,0,255}));
    connect(ground8.p,variable_DC_Load9.n) annotation(Line(points = {{104,-50},{104,-45.98237158831409},{110.64082212996652,-45.98237158831409},{110.64082212996652,-41.964743176628176}},color = {0,0,255}));
    connect(Power_Supply_3.pin_p,variable_DC_Load8.p) annotation(Line(points = {{84,-70},{90,-70},{90,-62.04326779469115},{108.77277383463968,-62.04326779469115},{108.77277383463968,-68.04326779469115}},color = {0,0,255}));
    connect(Power_Supply_3.pin_n,variable_DC_Load8.n) annotation(Line(points = {{84,-86},{90,-86},{90,-94.04326779469115},{108.77277383463968,-94.04326779469115},{108.77277383463968,-88.04326779469115}},color = {0,0,255}));
    connect(ground13.p,variable_DC_Load8.n) annotation(Line(points = {{104,-98},{104,-93.02163389734557},{108.77277383463968,-93.02163389734557},{108.77277383463968,-88.04326779469115}},color = {0,0,255}));
    connect(Laptop_Charger_5.pin_p,variable_DC_Load7.p) annotation(Line(points = {{80,-118},{86,-118},{86,-110.92386485574441},{110.95216351252105,-110.92386485574441},{110.95216351252105,-116.92386485574441}},color = {0,0,255}));
    connect(Laptop_Charger_5.pin_n,variable_DC_Load7.n) annotation(Line(points = {{80,-134},{86,-134},{86,-142.9238648557444},{110.95216351252105,-142.9238648557444},{110.95216351252105,-136.9238648557444}},color = {0,0,255}));
    connect(ramp.y,variable_DC_Load.u) annotation(Line(points = {{201,160},{207,160},{207,126.30266411117445},{120.43429662074213,126.30266411117445}},color = {0,0,127}));
    connect(ramp.y,variable_DC_Load4.u) annotation(Line(points = {{201,160},{223.1743581707119,160},{223.1743581707119,44.74254956934127},{217.1743581707119,44.74254956934127}},color = {0,0,127}));
    connect(ramp.y,variable_DC_Load9.u) annotation(Line(points = {{201,160},{256,160},{256,-78},{124,-78},{124,-32.16474317662817},{115.64082212996652,-32.16474317662817}},color = {0,0,127}));
    connect(ramp2.y,variable_DC_Load2.u) annotation(Line(points = {{315,128},{321,128},{321,74.83289165433501},{124.12336463320695,74.83289165433501}},color = {0,0,127}));
    connect(ramp2.y,variable_DC_Load5.u) annotation(Line(points = {{315,128},{321,128},{321,-0.09060951850376109},{225.58057549968285,-0.09060951850376109}},color = {0,0,127}));
    connect(ramp2.y,variable_DC_Load8.u) annotation(Line(points = {{315,128},{321,128},{321,-78.24326779469115},{113.77277383463968,-78.24326779469115}},color = {0,0,127}));
    connect(ramp3.y,variable_DC_Load3.u) annotation(Line(points = {{305,-106},{311,-106},{311,27.386425933693644},{117.50155499122488,27.386425933693644}},color = {0,0,127}));
    connect(ramp3.y,variable_DC_Load6.u) annotation(Line(points = {{305,-106},{311,-106},{311,-48.971206579557},{223.71252720435595,-48.971206579557}},color = {0,0,127}));
    connect(ramp3.y,variable_DC_Load7.u) annotation(Line(points = {{305,-106},{311,-106},{311,-127.12386485574442},{115.95216351252105,-127.12386485574442}},color = {0,0,127}));
    connect(LED_Driver_1.PLoss,multiSum.u[1]) annotation(Line(points = {{78.59998475249006,136.11998170298816},{78.59998475249006,178},{118,178}},color = {0,0,127}));
    connect(Power_Supply_1.PLoss,multiSum.u[2]) annotation(Line(points = {{74,89},{74,178},{118,178}},color = {0,0,127}));
    connect(Laptop_Charger_3.PLoss,multiSum.u[3]) annotation(Line(points = {{76,41},{76,178},{118,178}},color = {0,0,127}));
    connect(LED_Driver_3.PLoss,multiSum.u[4]) annotation(Line(points = {{78,-19},{78,178},{118,178}},color = {0,0,127}));
    connect(Power_Supply_3.PLoss,multiSum.u[5]) annotation(Line(points = {{74,-67},{74,178},{118,178}},color = {0,0,127}));
    connect(Laptop_Charger_5.PLoss,multiSum.u[6]) annotation(Line(points = {{70,-115},{70,178},{118,178}},color = {0,0,127}));
    connect(LED_Driver_2.PLoss,multiSum.u[7]) annotation(Line(points = {{178,59},{178,65},{112,65},{112,178},{118,178}},color = {0,0,127}));
    connect(Power_Supply_2.PLoss,multiSum.u[8]) annotation(Line(points = {{178,13},{178,19},{112,19},{112,178},{118,178}},color = {0,0,127}));
    connect(Laptop_Charger_4.PLoss,multiSum.u[9]) annotation(Line(points = {{176,-33},{176,-27},{112,-27},{112,178},{118,178}},color = {0,0,127}));
    connect(voltageSource.P,gain.u) annotation(Line(points = {{-138,-4.25},{-138,118},{-110,118}},color = {0,0,127}));
    connect(gain.y,division.u2) annotation(Line(points = {{-87,118},{60.5,118},{60.5,224},{208,224}},color = {0,0,127}));
    connect(ramp.y,gain2.u) annotation(Line(points = {{201,160},{305.5,160},{305.5,164},{410,164}},color = {0,0,127}));
    connect(gain2.y,multiSum2.u[1]) annotation(Line(points = {{433,164},{472.5,164},{472.5,154},{512,154}},color = {0,0,127}));
    connect(ramp2.y,gain3.u) annotation(Line(points = {{315,128},{371.5,128},{371.5,116},{428,116}},color = {0,0,127}));
    connect(gain3.y,multiSum2.u[2]) annotation(Line(points = {{451,116},{481.5,116},{481.5,154},{512,154}},color = {0,0,127}));
    connect(ramp3.y,gain4.u) annotation(Line(points = {{305,-106},{380.5,-106},{380.5,12},{456,12}},color = {0,0,127}));
    connect(gain4.y,multiSum2.u[3]) annotation(Line(points = {{479,12},{495.5,12},{495.5,154},{512,154}},color = {0,0,127}));
    connect(multiSum2.y,division.u1) annotation(Line(points = {{525.02,154},{531.02,154},{531.02,195},{204,195},{204,236},{208,236}},color = {0,0,127}));
    connect(variable_DC_Load7.n,ground5.p) annotation(Line(points = {{110.95216351252105,-136.9238648557444},{110.95216351252105,-144.4619324278722},{110,-144.4619324278722},{110,-152}},color = {0,0,255}));
  annotation (
    Diagram(coordinateSystem(extent = {{-300, -220}, {300, 240}}, initialScale = 0.1), graphics={  Text(origin = {-42, 12}, lineColor = {28, 108, 200}, extent = {{-182, 192}, {146, 164}}, textString = "Scenario 1 | Data Set 1.2
Load Phase a-n        Total Load - 100W                Load Bank 1 (78W), LED 1 (22W)
Load Phase b-n        Total Load - 100W                Load Bank 2 (78W), LED 2 (22W)
Load Phase c-n        Total Load - 100W                Load Bank 3 (78W), LED 3 (22W)",
            horizontalAlignment =                                                        TextAlignment.Left)}),
    Icon(coordinateSystem(extent = {{-300, -220}, {300, 240}})),
    experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-10, Interval = 1),
    __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl", ls = "totalpivot", nls = "newton"),
  __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian,newInst -d=initialization ");
end Scenario_1_Data_Set_1_5;
