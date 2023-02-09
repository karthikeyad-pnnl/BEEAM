within HPF.Examples.ModelingValidation;

model Scenario_1_Data_Set_1_6
  .HPF.SinglePhase.Components.Ground ground annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{-286.0, -94.0}, {-266.0, -74.0}}, rotation = 0.0)));
  inner .HPF.SystemDef systemDef(fs = 10e3, hrms = {i for i in 1:2:20}) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{-231.5613716774902, 49.13787189548461}, {-170.4386283225098, 101.52879477118208}}, rotation = 0.0)));
  .HPF.Sources.ThreePhase.VotlageSource voltageSource(vArg_phA = {0.52196, 5.0309, 3.137, 5.1211, 0.88185, 0.5405, 2.7381, 3.3571, 3.1032, 1.0556, 4.7534, 0.08957, 4.2676, 4.1244, 4.4068}, vArg_phB = {4.7098, 2.6393, 0.15983, 3.0248, 0.54992, 2.8356, 0.30425, 1.6224, 5.1955, 4.6578, 1.421, 1.561, 2.3545, 1.471, 0.6687}, vArg_phC = {2.616, 0.41259, 4.8314, 0.56289, 3.7924, 4.8133, 4.8348, -0.2768, 0.88781, 2.6372, 4.1405, 4.1314, 0.31627, 0.0998, 2.1076}, vMag_phA = {281.6099, 0.52895, 0.47049, 0.73987, 0.12572, 0.73742, 0.42769, 0.058304, 0.29207, 0.058748, 0.015748, 0.02911, 0.017013, 0.0086381, 0.017564}, vMag_phB = {281.5887, 0.66547, 0.46821, 1.1624, 0.27892, 0.72691, 0.37598, 0.030611, 0.254, 0.065578, 0.021447, 0.041925, 0.013833, 0.0068935, 0.013253}, vMag_phC = {281.39, 0.46521, 0.075759, 1.0168, 0.39967, 0.60233, 0.28322, 0.061309, 0.27537, 0.028665, 0.0058585, 0.053376, 0.017543, 0.0048111, 0.010129}) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{-301.2714953052841, -49.27149530528409}, {-254.72850469471592, -2.728504694715909}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_2(P1(start = 40), S1(start = 40), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_2.mat", nomP = 40, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{31.9375, -62.33333333333336}, {51.9375, -42.33333333333336}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground4 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{71.9375, -86.33333333333336}, {91.9375, -66.33333333333336}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground6 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{66.0, 116.0}, {86.0, 136.0}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_3(P1(start = 35), S1(start = 35), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_3.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{245.5, -487.2272727272731}, {265.5, -467.2272727272731}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground8 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{289.5, -523.2272727272731}, {309.5, -503.2272727272731}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_1(P1(start = 28), S1(start = 28), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 25.2, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{86.0, 132.0}, {106.0, 152.0}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground10 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{144.0, 32.0}, {164.0, 52.0}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground17 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{1.9375, -79.00000000000003}, {21.9375, -59.00000000000003}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground19 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{227.5, -525.2272727272731}, {247.5, -505.2272727272731}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load(pwr = 21) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {128.0, 142.0}, rotation = -90.0)));
  .HPF.DC.DC_Load dC_Load4(pwr = 40) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {73.9375, -54.33333333333336}, rotation = -90.0)));
  .HPF.DC.DC_Load dC_Load6(pwr = 34) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {295.5, -481.2272727272731}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_(nomV = 120, nomP = 25.2, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 28), P1(start = 28)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{87.33333333333334, 94.33333333333334}, {107.33333333333334, 114.33333333333334}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load2(pwr = 21) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {129.33333333333334, 104.33333333333334}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground3 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{63.33333333333334, 78.33333333333334}, {83.33333333333334, 98.33333333333334}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_4(nomV = 120, nomP = 25.2, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 28), P1(start = 28)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{87.33333333333334, 59.33333333333334}, {107.33333333333334, 79.33333333333334}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load3(pwr = 21) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {129.33333333333334, 69.33333333333334}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground5 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{63.33333333333334, 43.33333333333334}, {83.33333333333334, 63.33333333333334}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_5(nomV = 120, nomP = 25.2, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 28), P1(start = 28)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{193.33333333333331, 133.33333333333337}, {213.33333333333331, 153.33333333333337}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load5(pwr = 22) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {235.33333333333334, 143.33333333333334}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground7 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{172.0, 116.0}, {192.0, 136.0}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_6(nomV = 120, nomP = 25.2, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 28), P1(start = 28)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{191.99999999999997, 91.0}, {211.99999999999997, 111.0}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load7(pwr = 22) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {234.0, 101.0}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground9 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{167.99999999999997, 75.0}, {187.99999999999997, 95.0}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_7(nomV = 120, nomP = 25.2, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 28), P1(start = 28)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{283.3333333333333, 134.0}, {303.3333333333333, 154.0}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load8(pwr = 25) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {325.3333333333333, 144.0}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground11 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{259.3333333333333, 117.99999999999999}, {279.3333333333333, 138.0}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_8(nomV = 120, nomP = 25.2, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 28), P1(start = 28)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{283.3333333333333, 87.99999999999999}, {303.3333333333333, 107.99999999999999}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load9(pwr = 25) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {325.3333333333333, 97.99999999999999}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground12 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{259.3333333333333, 71.99999999999999}, {279.3333333333333, 91.99999999999999}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_9(nomV = 120, nomP = 25.2, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 28), P1(start = 28)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{283.3333333333333, 39.999999999999986}, {303.3333333333333, 59.999999999999986}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load10(pwr = 25) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {325.3333333333333, 49.999999999999986}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground13 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{259.3333333333333, 23.999999999999986}, {279.3333333333333, 43.999999999999986}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_10(nomV = 120, nomP = 30, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 30), P1(start = 30)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{385.3333333333335, 135.0}, {405.3333333333335, 155.0}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load11(pwr = 28) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {427.3333333333335, 145.0}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground14 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{361.3333333333335, 119.0}, {381.3333333333335, 139.0}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_11(nomV = 120, nomP = 30, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 30), P1(start = 30)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{385.3333333333335, 86.99999999999999}, {405.3333333333335, 106.99999999999999}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load12(pwr = 28) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {427.3333333333335, 96.99999999999999}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground15 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{361.3333333333335, 70.99999999999999}, {381.3333333333335, 90.99999999999999}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_12(nomV = 120, nomP = 30, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 30), P1(start = 30)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{385.3333333333335, 41.000000000000014}, {405.3333333333335, 61.000000000000014}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load13(pwr = 28) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {427.3333333333335, 51.000000000000014}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground16 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{361.3333333333335, 25.000000000000014}, {381.3333333333335, 45.000000000000014}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_13(nomV = 120, nomP = 30, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 30), P1(start = 30)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{385.3333333333335, -6.999999999999986}, {405.3333333333335, 13.000000000000014}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load14(pwr = 28) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {427.3333333333335, 3.000000000000014}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground18 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{361.3333333333335, -22.999999999999986}, {381.3333333333335, -2.999999999999986}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_14(nomV = 120, nomP = 30, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 30), P1(start = 30)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{385.3333333333335, -49.00000000000004}, {405.3333333333335, -29.000000000000043}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load15(pwr = 28) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {427.3333333333335, -39.00000000000004}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground20 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{361.3333333333335, -65.00000000000003}, {381.3333333333335, -45.00000000000003}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_15(nomV = 120, nomP = 30, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 30), P1(start = 30)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{385.3333333333335, -90.99999999999999}, {405.3333333333335, -70.99999999999999}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load16(pwr = 28) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {427.3333333333335, -80.99999999999999}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground21 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{361.3333333333335, -106.99999999999999}, {381.3333333333335, -86.99999999999999}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_16(P1(start = 30), S1(start = 30), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 30, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{385.3333333333332, -133.0}, {405.3333333333332, -113.0}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load17(pwr = 28) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {427.3333333333332, -123.0}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground22 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{361.3333333333332, -149.0}, {381.3333333333332, -129.0}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_17(P1(start = 30), S1(start = 30), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 30, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{385.3333333333332, -181.0}, {405.3333333333332, -161.0}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load18(pwr = 28) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {427.3333333333332, -171.0}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground23 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{361.3333333333332, -197.0}, {381.3333333333332, -177.0}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_18(P1(start = 30), S1(start = 30), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 30, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{385.3333333333332, -227.0}, {405.3333333333332, -207.0}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load19(pwr = 28) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {427.3333333333332, -217.0}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground24 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{361.3333333333332, -243.0}, {381.3333333333332, -223.0}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_19(P1(start = 30), S1(start = 30), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 30, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{385.3333333333332, -275.0}, {405.3333333333332, -255.0}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load20(pwr = 28) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {427.3333333333332, -265.0}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_20(P1(start = 35), S1(start = 35), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{492.4137931034481, 134.89655172413794}, {512.4137931034481, 154.89655172413794}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load21(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {534.4137931034481, 144.89655172413794}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground25 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{468.4137931034481, 118.89655172413794}, {488.4137931034481, 138.89655172413794}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_21(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{492.4137931034481, 86.89655172413791}, {512.4137931034481, 106.89655172413791}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load22(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {534.4137931034481, 96.89655172413791}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground26 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{468.4137931034481, 70.89655172413791}, {488.4137931034481, 90.89655172413791}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_22(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{492.4137931034481, 40.896551724137936}, {512.4137931034481, 60.896551724137936}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load23(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {534.4137931034481, 50.896551724137936}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground27 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{468.4137931034481, 24.896551724137936}, {488.4137931034481, 44.896551724137936}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_23(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{492.4137931034481, -7.103448275862064}, {512.4137931034481, 12.896551724137936}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load24(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {534.4137931034481, 2.896551724137936}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground28 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{468.4137931034481, -23.103448275862057}, {488.4137931034481, -3.103448275862057}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_24(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{492.4137931034481, -49.103448275862114}, {512.4137931034481, -29.103448275862114}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load25(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {534.4137931034481, -39.103448275862114}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground29 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{468.4137931034481, -65.10344827586209}, {488.4137931034481, -45.1034482758621}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_25(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{492.4137931034481, -91.10344827586206}, {512.4137931034481, -71.10344827586206}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load26(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {534.4137931034481, -81.10344827586206}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground30 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{468.4137931034481, -107.10344827586206}, {488.4137931034481, -87.10344827586206}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_26(nomV = 120, nomP = 35, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 31), P1(start = 31)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{492.4137931034478, -133.10344827586206}, {512.4137931034478, -113.10344827586206}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load27(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {534.4137931034478, -123.10344827586206}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground31 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{468.4137931034478, -149.10344827586206}, {488.4137931034478, -129.10344827586206}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_27(nomV = 120, nomP = 35, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 31), P1(start = 31)) annotation(
    Placement(transformation(extent = {{494.0, -178.0}, {514.0, -158.0}}, origin = {0.0, 0.0}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground32 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{468.4137931034478, -197.10344827586206}, {488.4137931034478, -177.10344827586206}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_28(nomV = 120, nomP = 35, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 31), P1(start = 31)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{492.4137931034478, -227.10344827586206}, {512.4137931034478, -207.10344827586206}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load29(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {534.4137931034478, -217.10344827586206}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground33 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{468.4137931034478, -243.10344827586206}, {488.4137931034478, -223.10344827586206}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_29(nomV = 120, nomP = 35, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 31), P1(start = 31)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{492.4137931034478, -275.1034482758621}, {512.4137931034478, -255.1034482758621}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load30(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {534.4137931034478, -265.1034482758621}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_30(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{490.41379310344837, -315.103448275862}, {510.41379310344837, -295.103448275862}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load31(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {532.4137931034484, -305.103448275862}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground34 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{466.41379310344837, -331.103448275862}, {486.41379310344837, -311.103448275862}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_31(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{601.6029258098226, 132.67502612330213}, {621.6029258098226, 152.67502612330213}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load32(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {643.6029258098226, 142.67502612330213}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground35 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{577.6029258098226, 116.67502612330213}, {597.6029258098226, 136.67502612330213}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_32(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{601.6029258098226, 86.67502612330219}, {621.6029258098226, 106.67502612330219}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load33(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {643.6029258098226, 96.67502612330219}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground36 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{577.6029258098226, 70.67502612330219}, {597.6029258098226, 90.67502612330219}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_33(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{601.6029258098226, 38.67502612330219}, {621.6029258098226, 58.67502612330219}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load34(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {643.6029258098226, 48.67502612330219}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground37 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{577.6029258098226, 22.67502612330219}, {597.6029258098226, 42.67502612330219}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_34(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{601.6029258098226, -3.324973876697868}, {621.6029258098226, 16.675026123302132}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load35(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {643.6029258098226, 6.675026123302132}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground38 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{577.6029258098226, -19.324973876697868}, {597.6029258098226, 0.675026123302132}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_35(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{601.6029258098226, -45.324973876697754}, {621.6029258098226, -25.324973876697754}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load36(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {643.6029258098226, -35.324973876697754}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground39 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{577.6029258098226, -61.32497387669787}, {597.6029258098226, -41.32497387669787}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_36(nomV = 120, nomP = 35, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 30), P1(start = 30)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{601.6029258098223, -87.32497387669787}, {621.6029258098223, -67.32497387669787}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load37(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {643.6029258098223, -77.32497387669787}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground40 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{577.6029258098223, -103.32497387669787}, {597.6029258098223, -83.32497387669787}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_37(nomV = 120, nomP = 35, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 30), P1(start = 30)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{601.6029258098223, -135.32497387669787}, {621.6029258098223, -115.32497387669787}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load38(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {643.6029258098223, -125.32497387669787}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground41 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{577.6029258098223, -151.32497387669787}, {597.6029258098223, -131.32497387669787}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_38(nomV = 120, nomP = 35, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 31), P1(start = 31)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{601.6029258098223, -181.32497387669787}, {621.6029258098223, -161.32497387669787}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load39(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {643.6029258098223, -171.32497387669787}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground42 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{577.6029258098223, -197.32497387669787}, {597.6029258098223, -177.32497387669787}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_39(nomV = 120, nomP = 35, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", V_Rect = 24, S1(start = 31), P1(start = 31)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{601.6029258098223, -229.32497387669787}, {621.6029258098223, -209.32497387669787}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load40(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {643.6029258098223, -219.32497387669787}, rotation = -90.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground43 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{662.0, -330.0}, {682.0, -310.0}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load41(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {646.1415136587552, -256.8405732198835}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_40(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{604.1415136587552, -266.8405732198835}, {624.1415136587552, -246.84057321988348}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_41(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_1.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{602.8081803254219, -309.17390655321685}, {622.8081803254219, -289.17390655321685}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load42(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {644.8081803254219, -299.17390655321685}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground44 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{578.8081803254219, -325.17390655321685}, {598.8081803254219, -305.17390655321685}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground45 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{582.8081803254219, -284.17390655321685}, {602.8081803254219, -264.17390655321685}}, rotation = 0.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_42(nomV = 120, nomP = 40, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_2.mat", V_Rect = 24, S1(start = 40), P1(start = 40)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{31.4375, -106.33333333333336}, {51.4375, -86.33333333333336}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground46 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{71.4375, -130.33333333333337}, {91.4375, -110.33333333333336}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground47 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{1.4375, -123.00000000000003}, {21.4375, -103.00000000000003}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load43(pwr = 40) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {73.4375, -98.33333333333336}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_43(nomV = 120, nomP = 40, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_2.mat", V_Rect = 24, S1(start = 40), P1(start = 40)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{31.6875, -154.33333333333337}, {51.6875, -134.33333333333337}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground48 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{71.6875, -178.33333333333337}, {91.6875, -158.33333333333337}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground49 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{1.6875, -171.00000000000003}, {21.6875, -151.00000000000003}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load44(pwr = 40) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {73.6875, -146.33333333333337}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_44(P1(start = 40), S1(start = 40), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_2.mat", nomP = 40, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{31.1875, -198.33333333333337}, {51.1875, -178.33333333333337}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground50 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{71.1875, -222.33333333333337}, {91.1875, -202.33333333333337}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground51 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{1.1875, -215.00000000000003}, {21.1875, -195.00000000000003}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load45(pwr = 40) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {73.1875, -190.33333333333337}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_45(nomV = 120, nomP = 40, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_2.mat", V_Rect = 24, S1(start = 40), P1(start = 40)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{131.6875, -62.33333333333336}, {151.6875, -42.33333333333336}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground52 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{171.6875, -86.33333333333336}, {191.6875, -66.33333333333336}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground53 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{101.6875, -79.00000000000003}, {121.6875, -59.00000000000003}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load46(pwr = 40) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {173.6875, -54.33333333333336}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_46(P1(start = 40), S1(start = 40), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_2.mat", nomP = 40, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{131.1875, -106.33333333333336}, {151.1875, -86.33333333333336}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground54 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{171.1875, -130.33333333333337}, {191.1875, -110.33333333333336}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground55 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{101.1875, -123.00000000000003}, {121.1875, -103.00000000000003}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load47(pwr = 40) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {173.1875, -98.33333333333336}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_47(nomV = 120, nomP = 30, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_2.mat", V_Rect = 24, S1(start = 28), P1(start = 28)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{227.6875, -62.33333333333336}, {247.6875, -42.33333333333336}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground56 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{267.6875, -86.33333333333336}, {287.6875, -66.33333333333336}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground57 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{206.0, -78.0}, {226.0, -58.0}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load48(pwr = 28) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {269.6875, -54.33333333333336}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_48(P1(start = 28), S1(start = 28), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_2.mat", nomP = 30, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{227.1875, -106.33333333333336}, {247.1875, -86.33333333333336}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground58 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{267.1875, -130.33333333333337}, {287.1875, -110.33333333333336}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground59 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{206.0, -124.0}, {226.0, -104.0}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load49(pwr = 28) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {269.1875, -98.33333333333336}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_49(nomV = 120, nomP = 40, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_3.mat", V_Rect = 24, S1(start = 28), P1(start = 28)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{35.5, -265.22727272727303}, {55.5, -245.22727272727303}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground60 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{79.5, -301.22727272727303}, {99.5, -281.22727272727303}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground61 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{17.5, -303.22727272727303}, {37.5, -283.22727272727303}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load50(pwr = 40) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {85.5, -259.22727272727303}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_50(nomV = 120, nomP = 40, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_3.mat", V_Rect = 24, S1(start = 40), P1(start = 40)) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{35.5, -321.22727272727303}, {55.5, -301.22727272727303}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground62 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{79.5, -357.22727272727303}, {99.5, -337.22727272727303}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground63 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{17.5, -359.22727272727303}, {37.5, -339.22727272727303}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load51(pwr = 40) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {85.5, -315.22727272727303}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_51(P1(start = 40), S1(start = 40), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_3.mat", nomP = 40, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{37.5, -375.22727272727303}, {57.5, -355.22727272727303}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground64 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{81.5, -411.22727272727303}, {101.5, -391.22727272727303}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground65 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{19.5, -413.22727272727303}, {39.5, -393.22727272727303}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load52(pwr = 40) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {87.5, -369.22727272727303}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_52(P1(start = 40), S1(start = 40), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_3.mat", nomP = 40, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{37.5, -431.22727272727303}, {57.5, -411.22727272727303}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground66 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{81.5, -467.2272727272731}, {101.5, -447.2272727272731}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground67 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{19.5, -469.2272727272731}, {39.5, -449.2272727272731}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load53(pwr = 40) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {87.5, -425.22727272727303}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_53(P1(start = 25), S1(start = 25), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_3.mat", nomP = 25.2, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{137.5, -263.22727272727303}, {157.5, -243.22727272727303}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground68 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{181.5, -299.22727272727303}, {201.5, -279.22727272727303}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground69 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{119.5, -301.22727272727303}, {139.5, -281.22727272727303}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load54(pwr = 25) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {187.5, -257.22727272727303}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_54(P1(start = 25), S1(start = 25), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_3.mat", nomP = 25.2, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{137.5, -319.22727272727303}, {157.5, -299.22727272727303}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground70 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{181.5, -355.22727272727303}, {201.5, -335.22727272727303}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground71 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{119.5, -357.22727272727303}, {139.5, -337.22727272727303}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load55(pwr = 25) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {187.5, -313.22727272727303}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_55(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_3.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{243.5, -265.22727272727303}, {263.5, -245.22727272727303}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground72 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{287.5, -301.22727272727303}, {307.5, -281.22727272727303}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground73 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{225.5, -303.22727272727303}, {245.5, -283.22727272727303}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load56(pwr = 34) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {293.5, -259.22727272727303}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_56(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_3.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{243.5, -321.22727272727303}, {263.5, -301.22727272727303}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground74 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{287.5, -357.22727272727303}, {307.5, -337.22727272727303}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground75 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{225.5, -359.22727272727303}, {245.5, -339.22727272727303}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load57(pwr = 34) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {293.5, -315.22727272727303}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_57(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_3.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{245.5, -375.22727272727303}, {265.5, -355.22727272727303}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground76 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{289.5, -411.22727272727303}, {309.5, -391.22727272727303}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground77 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{227.5, -413.22727272727303}, {247.5, -393.22727272727303}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load58(pwr = 34) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {295.5, -369.22727272727303}, rotation = -90.0)));
  .HPF.PowerConverters.SinglePhase.ACDC_EmpMdl LED_Driver_58(P1(start = 31), S1(start = 31), V_Rect = 24, modelFileName = "HPF/Data/ConverterModels/SinglePhase/ACDC/LED_Driver_3.mat", nomP = 35, nomV = 120) annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{245.5, -431.22727272727303}, {265.5, -411.22727272727303}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground78 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{289.5, -467.2272727272731}, {309.5, -447.2272727272731}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground79 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{227.5, -469.2272727272731}, {247.5, -449.2272727272731}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load59(pwr = 34) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {295.5, -425.22727272727303}, rotation = -90.0)));
  .HPF.SinglePhase.Components.Ground ground80 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{366.0, -292.0}, {386.0, -272.0}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground81 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{472.0, -294.0}, {492.0, -274.0}}, rotation = 0.0)));
  .HPF.SinglePhase.Components.Ground ground82 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{580.0, -248.0}, {600.0, -228.0}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground83 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{234.0, 34.0}, {254.0, 54.0}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground84 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{334.0, 18.0}, {354.0, 38.0}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground85 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{440.0, -298.0}, {460.0, -278.0}}, rotation = 0.0)));
  .Modelica.Electrical.Analog.Basic.Ground ground86 annotation(
    Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{542.0, -336.0}, {562.0, -316.0}}, rotation = 0.0)));
  .HPF.DC.DC_Load dC_Load28(pwr = 31) annotation(
    Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}}, origin = {532.0, -170.0}, rotation = -90.0)));
equation
  connect(voltageSource.pinN, ground.pin) annotation(
    Line(points = {{-278, -55.67115651423722}, {-276, -55.67115651423722}, {-276, -74}}, color = {117, 80, 123}));
  connect(LED_Driver_1.hPin_N, ground6.pin) annotation(
    Line(points = {{86, 136}, {76, 136}}, color = {117, 80, 123}));
  connect(LED_Driver_2.hPin_N, ground17.pin) annotation(
    Line(points = {{31.9375, -60.333333333333364}, {31.9375, -59.000000000000036}, {11.9375, -59.000000000000036}}, color = {117, 80, 123}));
  connect(LED_Driver_3.hPin_N, ground19.pin) annotation(
    Line(points = {{245.5, -485.2272727272731}, {231.5, -485.2272727272731}, {231.5, -509.2272727272731}, {237.5, -509.2272727272731}, {237.5, -505.2272727272731}}, color = {117, 80, 123}));
  connect(LED_Driver_1.pin_n, dC_Load.n) annotation(
    Line(points = {{106, 134}, {112, 134}, {112, 126}, {128, 126}, {128, 132}}, color = {0, 0, 255}));
  connect(LED_Driver_1.pin_p, dC_Load.p) annotation(
    Line(points = {{106, 150}, {112, 150}, {112, 158}, {128, 158}, {128, 152}}, color = {0, 0, 255}));
  connect(LED_Driver_2.pin_p, dC_Load4.p) annotation(
    Line(points = {{51.9375, -44.333333333333364}, {57.9375, -44.333333333333364}, {57.9375, -38.333333333333364}, {73.9375, -38.333333333333364}, {73.9375, -44.333333333333364}}, color = {0, 0, 255}));
  connect(LED_Driver_2.pin_n, dC_Load4.n) annotation(
    Line(points = {{51.9375, -60.333333333333364}, {57.9375, -60.333333333333364}, {57.9375, -71.00000000000003}, {73.9375, -71.00000000000003}, {73.9375, -64.33333333333337}}, color = {0, 0, 255}));
  connect(dC_Load4.n, ground4.p) annotation(
    Line(points = {{73.9375, -64.33333333333337}, {81.9375, -64.33333333333337}, {81.9375, -66.33333333333337}}, color = {0, 0, 255}));
  connect(LED_Driver_3.pin_p, dC_Load6.p) annotation(
    Line(points = {{265.5, -469.2272727272731}, {295.5, -469.2272727272731}, {295.5, -471.2272727272731}}, color = {0, 0, 255}));
  connect(LED_Driver_3.pin_n, dC_Load6.n) annotation(
    Line(points = {{265.5, -485.2272727272731}, {273.5, -485.2272727272731}, {273.5, -491.2272727272731}, {295.5, -491.2272727272731}}, color = {0, 0, 255}));
  connect(dC_Load6.n, ground8.p) annotation(
    Line(points = {{295.5, -491.2272727272731}, {295.5, -497.2272727272731}, {299.5, -497.2272727272731}, {299.5, -503.2272727272731}}, color = {0, 0, 255}));
  connect(LED_Driver_.pin_n, dC_Load2.n) annotation(
    Line(points = {{107.33333333333334, 96.33333333333334}, {113.33333333333334, 96.33333333333334}, {113.33333333333334, 88.33333333333334}, {129.33333333333334, 88.33333333333334}, {129.33333333333334, 94.33333333333334}}, color = {0, 0, 255}));
  connect(LED_Driver_.pin_p, dC_Load2.p) annotation(
    Line(points = {{107.33333333333334, 112.33333333333334}, {113.33333333333334, 112.33333333333334}, {113.33333333333334, 120.33333333333334}, {129.33333333333334, 120.33333333333334}, {129.33333333333334, 114.33333333333334}}, color = {0, 0, 255}));
  connect(LED_Driver_.hPin_N, ground3.pin) annotation(
    Line(points = {{87.33333333333334, 98.33333333333334}, {73.33333333333334, 98.33333333333334}}, color = {117, 80, 123}));
  connect(LED_Driver_4.pin_n, dC_Load3.n) annotation(
    Line(points = {{107.33333333333334, 61.33333333333334}, {113.33333333333334, 61.33333333333334}, {113.33333333333334, 53.33333333333334}, {129.33333333333334, 53.33333333333334}, {129.33333333333334, 59.33333333333334}}, color = {0, 0, 255}));
  connect(LED_Driver_4.pin_p, dC_Load3.p) annotation(
    Line(points = {{107.33333333333334, 77.33333333333334}, {113.33333333333334, 77.33333333333334}, {113.33333333333334, 85.33333333333331}, {129.33333333333334, 85.33333333333331}, {129.33333333333334, 79.33333333333334}}, color = {0, 0, 255}));
  connect(LED_Driver_4.hPin_N, ground5.pin) annotation(
    Line(points = {{87.33333333333334, 63.33333333333334}, {73.33333333333334, 63.33333333333334}}, color = {117, 80, 123}));
  connect(dC_Load.n, ground10.p) annotation(
    Line(points = {{128, 132}, {154, 132}, {154, 52}}, color = {0, 0, 255}));
  connect(dC_Load2.n, ground10.p) annotation(
    Line(points = {{129.33333333333334, 94.33333333333334}, {154, 94.33333333333334}, {154, 52}}, color = {0, 0, 255}));
  connect(dC_Load3.n, ground10.p) annotation(
    Line(points = {{129.33333333333334, 59.33333333333334}, {129.33333333333334, 55.66666666666667}, {154, 55.66666666666667}, {154, 52}}, color = {0, 0, 255}));
  connect(LED_Driver_5.pin_n, dC_Load5.n) annotation(
    Line(points = {{213.33333333333331, 135.33333333333334}, {219.33333333333331, 135.33333333333334}, {219.33333333333331, 127.33333333333334}, {235.33333333333331, 127.33333333333334}, {235.33333333333331, 133.33333333333334}}, color = {0, 0, 255}));
  connect(LED_Driver_5.pin_p, dC_Load5.p) annotation(
    Line(points = {{213.33333333333331, 151.33333333333334}, {219.33333333333331, 151.33333333333334}, {219.33333333333331, 159.33333333333334}, {235.33333333333331, 159.33333333333334}, {235.33333333333331, 153.33333333333334}}, color = {0, 0, 255}));
  connect(LED_Driver_5.hPin_N, ground7.pin) annotation(
    Line(points = {{193.33333333333331, 137.33333333333334}, {182, 137.33333333333334}, {182, 136}}, color = {117, 80, 123}));
  connect(LED_Driver_6.pin_n, dC_Load7.n) annotation(
    Line(points = {{211.99999999999997, 93}, {217.99999999999997, 93}, {217.99999999999997, 85}, {234, 85}, {234, 91}}, color = {0, 0, 255}));
  connect(LED_Driver_6.pin_p, dC_Load7.p) annotation(
    Line(points = {{211.99999999999997, 109}, {217.99999999999997, 109}, {217.99999999999997, 117}, {234, 117}, {234, 111}}, color = {0, 0, 255}));
  connect(LED_Driver_6.hPin_N, ground9.pin) annotation(
    Line(points = {{191.99999999999997, 95}, {177.99999999999997, 95}}, color = {117, 80, 123}));
  connect(LED_Driver_7.pin_n, dC_Load8.n) annotation(
    Line(points = {{303.3333333333333, 136}, {309.3333333333333, 136}, {309.3333333333333, 128}, {325.3333333333333, 128}, {325.3333333333333, 134}}, color = {0, 0, 255}));
  connect(LED_Driver_7.pin_p, dC_Load8.p) annotation(
    Line(points = {{303.3333333333333, 152}, {309.3333333333333, 152}, {309.3333333333333, 160}, {325.3333333333333, 160}, {325.3333333333333, 154}}, color = {0, 0, 255}));
  connect(LED_Driver_7.hPin_N, ground11.pin) annotation(
    Line(points = {{283.3333333333333, 138}, {269.3333333333333, 138}}, color = {117, 80, 123}));
  connect(LED_Driver_8.pin_n, dC_Load9.n) annotation(
    Line(points = {{303.3333333333333, 90}, {309.3333333333333, 90}, {309.3333333333333, 82}, {325.3333333333333, 82}, {325.3333333333333, 88}}, color = {0, 0, 255}));
  connect(LED_Driver_8.pin_p, dC_Load9.p) annotation(
    Line(points = {{303.3333333333333, 106}, {309.3333333333333, 106}, {309.3333333333333, 114}, {325.3333333333333, 114}, {325.3333333333333, 108}}, color = {0, 0, 255}));
  connect(LED_Driver_8.hPin_N, ground12.pin) annotation(
    Line(points = {{283.3333333333333, 92}, {269.3333333333333, 92}}, color = {117, 80, 123}));
  connect(LED_Driver_9.pin_n, dC_Load10.n) annotation(
    Line(points = {{303.3333333333333, 42}, {309.3333333333333, 42}, {309.3333333333333, 34}, {325.3333333333333, 34}, {325.3333333333333, 40}}, color = {0, 0, 255}));
  connect(LED_Driver_9.pin_p, dC_Load10.p) annotation(
    Line(points = {{303.3333333333333, 58}, {309.3333333333333, 58}, {309.3333333333333, 66}, {325.3333333333333, 66}, {325.3333333333333, 60}}, color = {0, 0, 255}));
  connect(LED_Driver_9.hPin_N, ground13.pin) annotation(
    Line(points = {{283.3333333333333, 44}, {269.3333333333333, 44}}, color = {117, 80, 123}));
  connect(LED_Driver_10.pin_n, dC_Load11.n) annotation(
    Line(points = {{405.3333333333335, 137}, {411.3333333333335, 137}, {411.3333333333335, 129}, {427.3333333333335, 129}, {427.3333333333335, 135}}, color = {0, 0, 255}));
  connect(LED_Driver_10.pin_p, dC_Load11.p) annotation(
    Line(points = {{405.3333333333335, 153}, {411.3333333333335, 153}, {411.3333333333335, 161}, {427.3333333333335, 161}, {427.3333333333335, 155}}, color = {0, 0, 255}));
  connect(LED_Driver_10.hPin_N, ground14.pin) annotation(
    Line(points = {{385.3333333333335, 139}, {371.3333333333335, 139}}, color = {117, 80, 123}));
  connect(LED_Driver_11.pin_n, dC_Load12.n) annotation(
    Line(points = {{405.3333333333335, 89}, {411.3333333333335, 89}, {411.3333333333335, 81}, {427.3333333333335, 81}, {427.3333333333335, 87}}, color = {0, 0, 255}));
  connect(LED_Driver_11.pin_p, dC_Load12.p) annotation(
    Line(points = {{405.3333333333335, 105}, {411.3333333333335, 105}, {411.3333333333335, 113}, {427.3333333333335, 113}, {427.3333333333335, 107}}, color = {0, 0, 255}));
  connect(LED_Driver_11.hPin_N, ground15.pin) annotation(
    Line(points = {{385.3333333333335, 91}, {371.3333333333335, 91}}, color = {117, 80, 123}));
  connect(LED_Driver_12.pin_n, dC_Load13.n) annotation(
    Line(points = {{405.3333333333335, 43}, {411.3333333333335, 43}, {411.3333333333335, 35}, {427.3333333333335, 35}, {427.3333333333335, 41}}, color = {0, 0, 255}));
  connect(LED_Driver_12.pin_p, dC_Load13.p) annotation(
    Line(points = {{405.3333333333335, 59}, {411.3333333333335, 59}, {411.3333333333335, 67}, {427.3333333333335, 67}, {427.3333333333335, 61}}, color = {0, 0, 255}));
  connect(LED_Driver_12.hPin_N, ground16.pin) annotation(
    Line(points = {{385.3333333333335, 45}, {371.3333333333335, 45}}, color = {117, 80, 123}));
  connect(LED_Driver_13.pin_n, dC_Load14.n) annotation(
    Line(points = {{405.3333333333335, -5}, {411.3333333333335, -5}, {411.3333333333335, -13}, {427.3333333333335, -13}, {427.3333333333335, -7}}, color = {0, 0, 255}));
  connect(LED_Driver_13.pin_p, dC_Load14.p) annotation(
    Line(points = {{405.3333333333335, 11}, {411.3333333333335, 11}, {411.3333333333335, 19}, {427.3333333333335, 19}, {427.3333333333335, 13}}, color = {0, 0, 255}));
  connect(LED_Driver_13.hPin_N, ground18.pin) annotation(
    Line(points = {{385.3333333333335, -3}, {371.3333333333335, -3}}, color = {117, 80, 123}));
  connect(LED_Driver_14.pin_n, dC_Load15.n) annotation(
    Line(points = {{405.3333333333335, -47.00000000000006}, {411.3333333333335, -47.00000000000006}, {411.3333333333335, -55.00000000000006}, {427.3333333333335, -55.00000000000006}, {427.3333333333335, -49.00000000000006}}, color = {0, 0, 255}));
  connect(LED_Driver_14.pin_p, dC_Load15.p) annotation(
    Line(points = {{405.3333333333335, -31.000000000000057}, {411.3333333333335, -31.000000000000057}, {411.3333333333335, -23.000000000000057}, {427.3333333333335, -23.000000000000057}, {427.3333333333335, -29.000000000000057}}, color = {0, 0, 255}));
  connect(LED_Driver_14.hPin_N, ground20.pin) annotation(
    Line(points = {{385.3333333333335, -45.00000000000006}, {371.3333333333335, -45.00000000000006}}, color = {117, 80, 123}));
  connect(LED_Driver_15.pin_n, dC_Load16.n) annotation(
    Line(points = {{405.3333333333335, -89}, {411.3333333333335, -89}, {411.3333333333335, -97}, {427.3333333333335, -97}, {427.3333333333335, -91}}, color = {0, 0, 255}));
  connect(LED_Driver_15.pin_p, dC_Load16.p) annotation(
    Line(points = {{405.3333333333335, -73}, {411.3333333333335, -73}, {411.3333333333335, -65}, {427.3333333333335, -65}, {427.3333333333335, -71}}, color = {0, 0, 255}));
  connect(LED_Driver_15.hPin_N, ground21.pin) annotation(
    Line(points = {{385.3333333333335, -87}, {371.3333333333335, -87}}, color = {117, 80, 123}));
  connect(LED_Driver_16.pin_n, dC_Load17.n) annotation(
    Line(points = {{405.3333333333332, -131}, {411.3333333333332, -131}, {411.3333333333332, -139}, {427.3333333333332, -139}, {427.3333333333332, -133}}, color = {0, 0, 255}));
  connect(LED_Driver_16.pin_p, dC_Load17.p) annotation(
    Line(points = {{405.3333333333332, -115}, {411.3333333333332, -115}, {411.3333333333332, -107}, {427.3333333333332, -107}, {427.3333333333332, -113}}, color = {0, 0, 255}));
  connect(LED_Driver_16.hPin_N, ground22.pin) annotation(
    Line(points = {{385.3333333333332, -129}, {371.3333333333332, -129}}, color = {117, 80, 123}));
  connect(LED_Driver_17.pin_n, dC_Load18.n) annotation(
    Line(points = {{405.3333333333332, -179}, {411.3333333333332, -179}, {411.3333333333332, -187}, {427.3333333333332, -187}, {427.3333333333332, -181}}, color = {0, 0, 255}));
  connect(LED_Driver_17.pin_p, dC_Load18.p) annotation(
    Line(points = {{405.3333333333332, -163}, {411.3333333333332, -163}, {411.3333333333332, -155}, {427.3333333333332, -155}, {427.3333333333332, -161}}, color = {0, 0, 255}));
  connect(LED_Driver_17.hPin_N, ground23.pin) annotation(
    Line(points = {{385.3333333333332, -177}, {371.3333333333332, -177}}, color = {117, 80, 123}));
  connect(LED_Driver_18.pin_n, dC_Load19.n) annotation(
    Line(points = {{405.3333333333332, -225}, {411.3333333333332, -225}, {411.3333333333332, -233}, {427.3333333333332, -233}, {427.3333333333332, -227}}, color = {0, 0, 255}));
  connect(LED_Driver_18.pin_p, dC_Load19.p) annotation(
    Line(points = {{405.3333333333332, -209}, {411.3333333333332, -209}, {411.3333333333332, -201}, {427.3333333333332, -201}, {427.3333333333332, -207}}, color = {0, 0, 255}));
  connect(LED_Driver_18.hPin_N, ground24.pin) annotation(
    Line(points = {{385.3333333333332, -223}, {371.3333333333332, -223}}, color = {117, 80, 123}));
  connect(LED_Driver_19.pin_n, dC_Load20.n) annotation(
    Line(points = {{405.3333333333332, -273}, {411.3333333333332, -273}, {411.3333333333332, -281}, {427.3333333333332, -281}, {427.3333333333332, -275}}, color = {0, 0, 255}));
  connect(LED_Driver_19.pin_p, dC_Load20.p) annotation(
    Line(points = {{405.3333333333332, -257}, {411.3333333333332, -257}, {411.3333333333332, -249}, {427.3333333333332, -249}, {427.3333333333332, -255}}, color = {0, 0, 255}));
  connect(LED_Driver_20.pin_n, dC_Load21.n) annotation(
    Line(points = {{512.4137931034481, 136.89655172413794}, {518.4137931034481, 136.89655172413794}, {518.4137931034481, 128.89655172413794}, {534.4137931034481, 128.89655172413794}, {534.4137931034481, 134.89655172413794}}, color = {0, 0, 255}));
  connect(LED_Driver_20.pin_p, dC_Load21.p) annotation(
    Line(points = {{512.4137931034481, 152.89655172413794}, {518.4137931034481, 152.89655172413794}, {518.4137931034481, 160.89655172413794}, {534.4137931034481, 160.89655172413794}, {534.4137931034481, 154.89655172413794}}, color = {0, 0, 255}));
  connect(LED_Driver_20.hPin_N, ground25.pin) annotation(
    Line(points = {{492.4137931034481, 138.89655172413794}, {478.4137931034481, 138.89655172413794}}, color = {117, 80, 123}));
  connect(LED_Driver_21.pin_n, dC_Load22.n) annotation(
    Line(points = {{512.4137931034481, 88.89655172413794}, {518.4137931034481, 88.89655172413794}, {518.4137931034481, 80.89655172413794}, {534.4137931034481, 80.89655172413794}, {534.4137931034481, 86.89655172413794}}, color = {0, 0, 255}));
  connect(LED_Driver_21.pin_p, dC_Load22.p) annotation(
    Line(points = {{512.4137931034481, 104.89655172413794}, {518.4137931034481, 104.89655172413794}, {518.4137931034481, 112.89655172413794}, {534.4137931034481, 112.89655172413794}, {534.4137931034481, 106.89655172413794}}, color = {0, 0, 255}));
  connect(LED_Driver_21.hPin_N, ground26.pin) annotation(
    Line(points = {{492.4137931034481, 90.89655172413794}, {478.4137931034481, 90.89655172413794}}, color = {117, 80, 123}));
  connect(LED_Driver_22.pin_n, dC_Load23.n) annotation(
    Line(points = {{512.4137931034481, 42.89655172413793}, {518.4137931034481, 42.89655172413793}, {518.4137931034481, 34.89655172413793}, {534.4137931034481, 34.89655172413793}, {534.4137931034481, 40.89655172413793}}, color = {0, 0, 255}));
  connect(LED_Driver_22.pin_p, dC_Load23.p) annotation(
    Line(points = {{512.4137931034481, 58.89655172413793}, {518.4137931034481, 58.89655172413793}, {518.4137931034481, 66.89655172413794}, {534.4137931034481, 66.89655172413794}, {534.4137931034481, 60.89655172413793}}, color = {0, 0, 255}));
  connect(LED_Driver_22.hPin_N, ground27.pin) annotation(
    Line(points = {{492.4137931034481, 44.89655172413793}, {478.4137931034481, 44.89655172413793}}, color = {117, 80, 123}));
  connect(LED_Driver_23.pin_n, dC_Load24.n) annotation(
    Line(points = {{512.4137931034481, -5.103448275862071}, {518.4137931034481, -5.103448275862071}, {518.4137931034481, -13.103448275862071}, {534.4137931034481, -13.103448275862071}, {534.4137931034481, -7.103448275862071}}, color = {0, 0, 255}));
  connect(LED_Driver_23.pin_p, dC_Load24.p) annotation(
    Line(points = {{512.4137931034481, 10.896551724137929}, {518.4137931034481, 10.896551724137929}, {518.4137931034481, 18.89655172413793}, {534.4137931034481, 18.89655172413793}, {534.4137931034481, 12.896551724137929}}, color = {0, 0, 255}));
  connect(LED_Driver_23.hPin_N, ground28.pin) annotation(
    Line(points = {{492.4137931034481, -3.103448275862071}, {478.4137931034481, -3.103448275862071}}, color = {117, 80, 123}));
  connect(LED_Driver_24.pin_n, dC_Load25.n) annotation(
    Line(points = {{512.4137931034481, -47.10344827586213}, {518.4137931034481, -47.10344827586213}, {518.4137931034481, -55.10344827586213}, {534.4137931034481, -55.10344827586213}, {534.4137931034481, -49.10344827586213}}, color = {0, 0, 255}));
  connect(LED_Driver_24.pin_p, dC_Load25.p) annotation(
    Line(points = {{512.4137931034481, -31.103448275862128}, {518.4137931034481, -31.103448275862128}, {518.4137931034481, -23.103448275862128}, {534.4137931034481, -23.103448275862128}, {534.4137931034481, -29.103448275862128}}, color = {0, 0, 255}));
  connect(LED_Driver_24.hPin_N, ground29.pin) annotation(
    Line(points = {{492.4137931034481, -45.10344827586213}, {478.4137931034481, -45.10344827586213}}, color = {117, 80, 123}));
  connect(LED_Driver_25.pin_n, dC_Load26.n) annotation(
    Line(points = {{512.4137931034481, -89.10344827586206}, {518.4137931034481, -89.10344827586206}, {518.4137931034481, -97.10344827586206}, {534.4137931034481, -97.10344827586206}, {534.4137931034481, -91.10344827586206}}, color = {0, 0, 255}));
  connect(LED_Driver_25.pin_p, dC_Load26.p) annotation(
    Line(points = {{512.4137931034481, -73.10344827586206}, {518.4137931034481, -73.10344827586206}, {518.4137931034481, -65.10344827586206}, {534.4137931034481, -65.10344827586206}, {534.4137931034481, -71.10344827586206}}, color = {0, 0, 255}));
  connect(LED_Driver_25.hPin_N, ground30.pin) annotation(
    Line(points = {{492.4137931034481, -87.10344827586206}, {478.4137931034481, -87.10344827586206}}, color = {117, 80, 123}));
  connect(LED_Driver_26.pin_n, dC_Load27.n) annotation(
    Line(points = {{512.4137931034478, -131.10344827586206}, {518.4137931034478, -131.10344827586206}, {518.4137931034478, -139.10344827586206}, {534.4137931034478, -139.10344827586206}, {534.4137931034478, -133.10344827586206}}, color = {0, 0, 255}));
  connect(LED_Driver_26.pin_p, dC_Load27.p) annotation(
    Line(points = {{512.4137931034478, -115.10344827586206}, {518.4137931034478, -115.10344827586206}, {518.4137931034478, -107.10344827586206}, {534.4137931034478, -107.10344827586206}, {534.4137931034478, -113.10344827586206}}, color = {0, 0, 255}));
  connect(LED_Driver_26.hPin_N, ground31.pin) annotation(
    Line(points = {{492.4137931034478, -129.10344827586206}, {478.4137931034478, -129.10344827586206}}, color = {117, 80, 123}));
  connect(LED_Driver_27.hPin_N, ground32.pin) annotation(
    Line(points = {{494, -176}, {494, -172}, {478.4137931034478, -172}, {478.4137931034478, -177.10344827586206}}, color = {117, 80, 123}));
  connect(LED_Driver_28.pin_n, dC_Load29.n) annotation(
    Line(points = {{512.4137931034478, -225.10344827586206}, {518.4137931034478, -225.10344827586206}, {518.4137931034478, -233.10344827586206}, {534.4137931034478, -233.10344827586206}, {534.4137931034478, -227.10344827586206}}, color = {0, 0, 255}));
  connect(LED_Driver_28.pin_p, dC_Load29.p) annotation(
    Line(points = {{512.4137931034478, -209.10344827586206}, {518.4137931034478, -209.10344827586206}, {518.4137931034478, -201.10344827586206}, {534.4137931034478, -201.10344827586206}, {534.4137931034478, -207.10344827586206}}, color = {0, 0, 255}));
  connect(LED_Driver_28.hPin_N, ground33.pin) annotation(
    Line(points = {{492.4137931034478, -223.10344827586206}, {478.4137931034478, -223.10344827586206}}, color = {117, 80, 123}));
  connect(LED_Driver_29.pin_n, dC_Load30.n) annotation(
    Line(points = {{512.4137931034478, -273.1034482758621}, {518.4137931034478, -273.1034482758621}, {518.4137931034478, -281.1034482758621}, {534.4137931034478, -281.1034482758621}, {534.4137931034478, -275.1034482758621}}, color = {0, 0, 255}));
  connect(LED_Driver_29.pin_p, dC_Load30.p) annotation(
    Line(points = {{512.4137931034478, -257.1034482758621}, {518.4137931034478, -257.1034482758621}, {518.4137931034478, -249.10344827586206}, {534.4137931034478, -249.10344827586206}, {534.4137931034478, -255.10344827586206}}, color = {0, 0, 255}));
  connect(LED_Driver_30.pin_n, dC_Load31.n) annotation(
    Line(points = {{510.41379310344837, -313.103448275862}, {516.4137931034484, -313.103448275862}, {516.4137931034484, -321.103448275862}, {532.4137931034484, -321.103448275862}, {532.4137931034484, -315.103448275862}}, color = {0, 0, 255}));
  connect(LED_Driver_30.pin_p, dC_Load31.p) annotation(
    Line(points = {{510.41379310344837, -297.103448275862}, {516.4137931034484, -297.103448275862}, {516.4137931034484, -289.103448275862}, {532.4137931034484, -289.103448275862}, {532.4137931034484, -295.103448275862}}, color = {0, 0, 255}));
  connect(LED_Driver_30.hPin_N, ground34.pin) annotation(
    Line(points = {{490.41379310344837, -311.103448275862}, {476.41379310344837, -311.103448275862}}, color = {117, 80, 123}));
  connect(LED_Driver_31.pin_n, dC_Load32.n) annotation(
    Line(points = {{621.6029258098226, 134.67502612330225}, {627.6029258098226, 134.67502612330225}, {627.6029258098226, 126.67502612330225}, {643.6029258098226, 126.67502612330225}, {643.6029258098226, 132.67502612330225}}, color = {0, 0, 255}));
  connect(LED_Driver_31.pin_p, dC_Load32.p) annotation(
    Line(points = {{621.6029258098226, 150.67502612330225}, {627.6029258098226, 150.67502612330225}, {627.6029258098226, 158.67502612330225}, {643.6029258098226, 158.67502612330225}, {643.6029258098226, 152.67502612330225}}, color = {0, 0, 255}));
  connect(LED_Driver_31.hPin_N, ground35.pin) annotation(
    Line(points = {{601.6029258098226, 136.67502612330225}, {587.6029258098226, 136.67502612330225}}, color = {117, 80, 123}));
  connect(LED_Driver_32.pin_n, dC_Load33.n) annotation(
    Line(points = {{621.6029258098226, 88.67502612330225}, {627.6029258098226, 88.67502612330225}, {627.6029258098226, 80.67502612330225}, {643.6029258098226, 80.67502612330225}, {643.6029258098226, 86.67502612330225}}, color = {0, 0, 255}));
  connect(LED_Driver_32.pin_p, dC_Load33.p) annotation(
    Line(points = {{621.6029258098226, 104.67502612330225}, {627.6029258098226, 104.67502612330225}, {627.6029258098226, 112.67502612330225}, {643.6029258098226, 112.67502612330225}, {643.6029258098226, 106.67502612330225}}, color = {0, 0, 255}));
  connect(LED_Driver_32.hPin_N, ground36.pin) annotation(
    Line(points = {{601.6029258098226, 90.67502612330225}, {587.6029258098226, 90.67502612330225}}, color = {117, 80, 123}));
  connect(LED_Driver_33.pin_n, dC_Load34.n) annotation(
    Line(points = {{621.6029258098226, 40.675026123302246}, {627.6029258098226, 40.675026123302246}, {627.6029258098226, 32.675026123302246}, {643.6029258098226, 32.675026123302246}, {643.6029258098226, 38.675026123302246}}, color = {0, 0, 255}));
  connect(LED_Driver_33.pin_p, dC_Load34.p) annotation(
    Line(points = {{621.6029258098226, 56.675026123302246}, {627.6029258098226, 56.675026123302246}, {627.6029258098226, 64.67502612330225}, {643.6029258098226, 64.67502612330225}, {643.6029258098226, 58.675026123302246}}, color = {0, 0, 255}));
  connect(LED_Driver_33.hPin_N, ground37.pin) annotation(
    Line(points = {{601.6029258098226, 42.675026123302246}, {587.6029258098226, 42.675026123302246}}, color = {117, 80, 123}));
  connect(LED_Driver_34.pin_n, dC_Load35.n) annotation(
    Line(points = {{621.6029258098226, -1.324973876697868}, {627.6029258098226, -1.324973876697868}, {627.6029258098226, -9.324973876697868}, {643.6029258098226, -9.324973876697868}, {643.6029258098226, -3.324973876697868}}, color = {0, 0, 255}));
  connect(LED_Driver_34.pin_p, dC_Load35.p) annotation(
    Line(points = {{621.6029258098226, 14.675026123302132}, {627.6029258098226, 14.675026123302132}, {627.6029258098226, 22.675026123302132}, {643.6029258098226, 22.675026123302132}, {643.6029258098226, 16.675026123302132}}, color = {0, 0, 255}));
  connect(LED_Driver_34.hPin_N, ground38.pin) annotation(
    Line(points = {{601.6029258098226, 0.675026123302132}, {587.6029258098226, 0.675026123302132}}, color = {117, 80, 123}));
  connect(LED_Driver_35.pin_n, dC_Load36.n) annotation(
    Line(points = {{621.6029258098226, -43.32497387669764}, {627.6029258098226, -43.32497387669764}, {627.6029258098226, -51.32497387669764}, {643.6029258098226, -51.32497387669764}, {643.6029258098226, -45.32497387669764}}, color = {0, 0, 255}));
  connect(LED_Driver_35.pin_p, dC_Load36.p) annotation(
    Line(points = {{621.6029258098226, -27.32497387669764}, {627.6029258098226, -27.32497387669764}, {627.6029258098226, -19.32497387669764}, {643.6029258098226, -19.32497387669764}, {643.6029258098226, -25.32497387669764}}, color = {0, 0, 255}));
  connect(LED_Driver_35.hPin_N, ground39.pin) annotation(
    Line(points = {{601.6029258098226, -41.32497387669764}, {587.6029258098226, -41.32497387669764}}, color = {117, 80, 123}));
  connect(LED_Driver_36.pin_n, dC_Load37.n) annotation(
    Line(points = {{621.6029258098223, -85.32497387669764}, {627.6029258098223, -85.32497387669764}, {627.6029258098223, -93.32497387669764}, {643.6029258098223, -93.32497387669764}, {643.6029258098223, -87.32497387669764}}, color = {0, 0, 255}));
  connect(LED_Driver_36.pin_p, dC_Load37.p) annotation(
    Line(points = {{621.6029258098223, -69.32497387669764}, {627.6029258098223, -69.32497387669764}, {627.6029258098223, -61.32497387669764}, {643.6029258098223, -61.32497387669764}, {643.6029258098223, -67.32497387669764}}, color = {0, 0, 255}));
  connect(LED_Driver_36.hPin_N, ground40.pin) annotation(
    Line(points = {{601.6029258098223, -83.32497387669764}, {587.6029258098223, -83.32497387669764}}, color = {117, 80, 123}));
  connect(LED_Driver_37.pin_n, dC_Load38.n) annotation(
    Line(points = {{621.6029258098223, -133.32497387669764}, {627.6029258098223, -133.32497387669764}, {627.6029258098223, -141.32497387669764}, {643.6029258098223, -141.32497387669764}, {643.6029258098223, -135.32497387669764}}, color = {0, 0, 255}));
  connect(LED_Driver_37.pin_p, dC_Load38.p) annotation(
    Line(points = {{621.6029258098223, -117.32497387669764}, {627.6029258098223, -117.32497387669764}, {627.6029258098223, -109.32497387669764}, {643.6029258098223, -109.32497387669764}, {643.6029258098223, -115.32497387669764}}, color = {0, 0, 255}));
  connect(LED_Driver_37.hPin_N, ground41.pin) annotation(
    Line(points = {{601.6029258098223, -131.32497387669764}, {587.6029258098223, -131.32497387669764}}, color = {117, 80, 123}));
  connect(LED_Driver_38.pin_n, dC_Load39.n) annotation(
    Line(points = {{621.6029258098223, -179.32497387669764}, {627.6029258098223, -179.32497387669764}, {627.6029258098223, -187.32497387669764}, {643.6029258098223, -187.32497387669764}, {643.6029258098223, -181.32497387669764}}, color = {0, 0, 255}));
  connect(LED_Driver_38.pin_p, dC_Load39.p) annotation(
    Line(points = {{621.6029258098223, -163.32497387669764}, {627.6029258098223, -163.32497387669764}, {627.6029258098223, -155.32497387669764}, {643.6029258098223, -155.32497387669764}, {643.6029258098223, -161.32497387669764}}, color = {0, 0, 255}));
  connect(LED_Driver_38.hPin_N, ground42.pin) annotation(
    Line(points = {{601.6029258098223, -177.32497387669764}, {587.6029258098223, -177.32497387669764}}, color = {117, 80, 123}));
  connect(LED_Driver_39.pin_n, dC_Load40.n) annotation(
    Line(points = {{621.6029258098223, -227.32497387669764}, {627.6029258098223, -227.32497387669764}, {627.6029258098223, -235.32497387669764}, {643.6029258098223, -235.32497387669764}, {643.6029258098223, -229.32497387669764}}, color = {0, 0, 255}));
  connect(LED_Driver_39.pin_p, dC_Load40.p) annotation(
    Line(points = {{621.6029258098223, -211.32497387669764}, {627.6029258098223, -211.32497387669764}, {627.6029258098223, -203.32497387669764}, {643.6029258098223, -203.32497387669764}, {643.6029258098223, -209.32497387669764}}, color = {0, 0, 255}));
  connect(LED_Driver_40.pin_n, dC_Load41.n) annotation(
    Line(points = {{624.1415136587552, -264.8405732198835}, {630.1415136587552, -264.8405732198835}, {630.1415136587552, -272.8405732198835}, {646.1415136587552, -272.8405732198835}, {646.1415136587552, -266.8405732198835}}, color = {0, 0, 255}));
  connect(LED_Driver_40.pin_p, dC_Load41.p) annotation(
    Line(points = {{624.1415136587552, -248.84057321988348}, {630.1415136587552, -248.84057321988348}, {630.1415136587552, -240.84057321988348}, {646.1415136587552, -240.84057321988348}, {646.1415136587552, -246.84057321988348}}, color = {0, 0, 255}));
  connect(LED_Driver_40.hPin_N, ground45.pin) annotation(
    Line(points = {{604.1415136587552, -262.8405732198835}, {592.8081803254219, -262.8405732198835}, {592.8081803254219, -264.17390655321674}}, color = {117, 80, 123}));
  connect(LED_Driver_41.pin_n, dC_Load42.n) annotation(
    Line(points = {{622.8081803254219, -307.17390655321674}, {628.8081803254219, -307.17390655321674}, {628.8081803254219, -315.17390655321674}, {644.8081803254219, -315.17390655321674}, {644.8081803254219, -309.17390655321674}}, color = {0, 0, 255}));
  connect(LED_Driver_41.pin_p, dC_Load42.p) annotation(
    Line(points = {{622.8081803254219, -291.17390655321674}, {628.8081803254219, -291.17390655321674}, {628.8081803254219, -283.17390655321674}, {644.8081803254219, -283.17390655321674}, {644.8081803254219, -289.17390655321674}}, color = {0, 0, 255}));
  connect(LED_Driver_41.hPin_N, ground44.pin) annotation(
    Line(points = {{602.8081803254219, -305.17390655321674}, {588.8081803254219, -305.17390655321674}}, color = {117, 80, 123}));
  connect(LED_Driver_42.hPin_N, ground47.pin) annotation(
    Line(points = {{31.4375, -104.33333333333336}, {31.4375, -103.00000000000003}, {11.4375, -103.00000000000003}}, color = {117, 80, 123}));
  connect(LED_Driver_42.pin_p, dC_Load43.p) annotation(
    Line(points = {{51.4375, -88.33333333333336}, {57.4375, -88.33333333333336}, {57.4375, -82.33333333333336}, {73.4375, -82.33333333333336}, {73.4375, -88.33333333333336}}, color = {0, 0, 255}));
  connect(LED_Driver_42.pin_n, dC_Load43.n) annotation(
    Line(points = {{51.4375, -104.33333333333336}, {57.4375, -104.33333333333336}, {57.4375, -115.00000000000003}, {73.4375, -115.00000000000003}, {73.4375, -108.33333333333336}}, color = {0, 0, 255}));
  connect(dC_Load43.n, ground46.p) annotation(
    Line(points = {{73.4375, -108.33333333333336}, {81.4375, -108.33333333333336}, {81.4375, -110.33333333333336}}, color = {0, 0, 255}));
  connect(LED_Driver_43.hPin_N, ground49.pin) annotation(
    Line(points = {{31.6875, -152.33333333333337}, {31.6875, -151.00000000000003}, {11.6875, -151.00000000000003}}, color = {117, 80, 123}));
  connect(LED_Driver_43.pin_p, dC_Load44.p) annotation(
    Line(points = {{51.6875, -136.33333333333337}, {57.6875, -136.33333333333337}, {57.6875, -130.33333333333337}, {73.6875, -130.33333333333337}, {73.6875, -136.33333333333337}}, color = {0, 0, 255}));
  connect(LED_Driver_43.pin_n, dC_Load44.n) annotation(
    Line(points = {{51.6875, -152.33333333333337}, {57.6875, -152.33333333333337}, {57.6875, -163.00000000000003}, {73.6875, -163.00000000000003}, {73.6875, -156.33333333333337}}, color = {0, 0, 255}));
  connect(dC_Load44.n, ground48.p) annotation(
    Line(points = {{73.6875, -156.33333333333337}, {81.6875, -156.33333333333337}, {81.6875, -158.33333333333337}}, color = {0, 0, 255}));
  connect(LED_Driver_44.hPin_N, ground51.pin) annotation(
    Line(points = {{31.1875, -196.33333333333334}, {31.1875, -195.00000000000003}, {11.1875, -195.00000000000003}}, color = {117, 80, 123}));
  connect(LED_Driver_44.pin_p, dC_Load45.p) annotation(
    Line(points = {{51.1875, -180.33333333333334}, {57.1875, -180.33333333333334}, {57.1875, -174.33333333333334}, {73.1875, -174.33333333333334}, {73.1875, -180.33333333333334}}, color = {0, 0, 255}));
  connect(LED_Driver_44.pin_n, dC_Load45.n) annotation(
    Line(points = {{51.1875, -196.33333333333334}, {57.1875, -196.33333333333334}, {57.1875, -207.00000000000003}, {73.1875, -207.00000000000003}, {73.1875, -200.33333333333334}}, color = {0, 0, 255}));
  connect(dC_Load45.n, ground50.p) annotation(
    Line(points = {{73.1875, -200.33333333333334}, {81.1875, -200.33333333333334}, {81.1875, -202.33333333333334}}, color = {0, 0, 255}));
  connect(LED_Driver_45.hPin_N, ground53.pin) annotation(
    Line(points = {{131.6875, -60.33333333333336}, {131.6875, -59.00000000000003}, {111.6875, -59.00000000000003}}, color = {117, 80, 123}));
  connect(LED_Driver_45.pin_p, dC_Load46.p) annotation(
    Line(points = {{151.6875, -44.33333333333336}, {157.6875, -44.33333333333336}, {157.6875, -38.33333333333336}, {173.6875, -38.33333333333336}, {173.6875, -44.33333333333336}}, color = {0, 0, 255}));
  connect(LED_Driver_45.pin_n, dC_Load46.n) annotation(
    Line(points = {{151.6875, -60.33333333333336}, {157.6875, -60.33333333333336}, {157.6875, -71.00000000000003}, {173.6875, -71.00000000000003}, {173.6875, -64.33333333333336}}, color = {0, 0, 255}));
  connect(dC_Load46.n, ground52.p) annotation(
    Line(points = {{173.6875, -64.33333333333336}, {181.6875, -64.33333333333336}, {181.6875, -66.33333333333336}}, color = {0, 0, 255}));
  connect(LED_Driver_46.hPin_N, ground55.pin) annotation(
    Line(points = {{131.1875, -104.33333333333336}, {131.1875, -103.00000000000003}, {111.1875, -103.00000000000003}}, color = {117, 80, 123}));
  connect(LED_Driver_46.pin_p, dC_Load47.p) annotation(
    Line(points = {{151.1875, -88.33333333333336}, {157.1875, -88.33333333333336}, {157.1875, -82.33333333333336}, {173.1875, -82.33333333333336}, {173.1875, -88.33333333333336}}, color = {0, 0, 255}));
  connect(LED_Driver_46.pin_n, dC_Load47.n) annotation(
    Line(points = {{151.1875, -104.33333333333336}, {157.1875, -104.33333333333336}, {157.1875, -115.00000000000003}, {173.1875, -115.00000000000003}, {173.1875, -108.33333333333336}}, color = {0, 0, 255}));
  connect(dC_Load47.n, ground54.p) annotation(
    Line(points = {{173.1875, -108.33333333333336}, {181.1875, -108.33333333333336}, {181.1875, -110.33333333333336}}, color = {0, 0, 255}));
  connect(LED_Driver_47.hPin_N, ground57.pin) annotation(
    Line(points = {{227.6875, -60.33333333333336}, {227.6875, -58}, {216, -58}}, color = {117, 80, 123}));
  connect(LED_Driver_47.pin_p, dC_Load48.p) annotation(
    Line(points = {{247.6875, -44.33333333333336}, {253.6875, -44.33333333333336}, {253.6875, -38.33333333333336}, {269.6875, -38.33333333333336}, {269.6875, -44.33333333333336}}, color = {0, 0, 255}));
  connect(LED_Driver_47.pin_n, dC_Load48.n) annotation(
    Line(points = {{247.6875, -60.33333333333336}, {253.6875, -60.33333333333336}, {253.6875, -71.00000000000003}, {269.6875, -71.00000000000003}, {269.6875, -64.33333333333336}}, color = {0, 0, 255}));
  connect(dC_Load48.n, ground56.p) annotation(
    Line(points = {{269.6875, -64.33333333333336}, {277.6875, -64.33333333333336}, {277.6875, -66.33333333333336}}, color = {0, 0, 255}));
  connect(LED_Driver_48.hPin_N, ground59.pin) annotation(
    Line(points = {{227.1875, -104.33333333333336}, {227.1875, -104}, {216, -104}}, color = {117, 80, 123}));
  connect(LED_Driver_48.pin_p, dC_Load49.p) annotation(
    Line(points = {{247.1875, -88.33333333333336}, {253.1875, -88.33333333333336}, {253.1875, -82.33333333333336}, {269.1875, -82.33333333333336}, {269.1875, -88.33333333333336}}, color = {0, 0, 255}));
  connect(LED_Driver_48.pin_n, dC_Load49.n) annotation(
    Line(points = {{247.1875, -104.33333333333336}, {253.1875, -104.33333333333336}, {253.1875, -115.00000000000003}, {269.1875, -115.00000000000003}, {269.1875, -108.33333333333336}}, color = {0, 0, 255}));
  connect(dC_Load49.n, ground58.p) annotation(
    Line(points = {{269.1875, -108.33333333333336}, {277.1875, -108.33333333333336}, {277.1875, -110.33333333333336}}, color = {0, 0, 255}));
  connect(LED_Driver_49.hPin_N, ground61.pin) annotation(
    Line(points = {{35.5, -263.22727272727303}, {21.5, -263.22727272727303}, {21.5, -287.22727272727303}, {27.5, -287.22727272727303}, {27.5, -283.22727272727303}}, color = {117, 80, 123}));
  connect(LED_Driver_49.pin_p, dC_Load50.p) annotation(
    Line(points = {{55.5, -247.22727272727303}, {85.5, -247.22727272727303}, {85.5, -249.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_49.pin_n, dC_Load50.n) annotation(
    Line(points = {{55.5, -263.22727272727303}, {63.5, -263.22727272727303}, {63.5, -269.22727272727303}, {85.5, -269.22727272727303}}, color = {0, 0, 255}));
  connect(dC_Load50.n, ground60.p) annotation(
    Line(points = {{85.5, -269.22727272727303}, {85.5, -275.22727272727303}, {89.5, -275.22727272727303}, {89.5, -281.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_50.hPin_N, ground63.pin) annotation(
    Line(points = {{35.5, -319.22727272727303}, {21.5, -319.22727272727303}, {21.5, -343.22727272727303}, {27.5, -343.22727272727303}, {27.5, -339.22727272727303}}, color = {117, 80, 123}));
  connect(LED_Driver_50.pin_p, dC_Load51.p) annotation(
    Line(points = {{55.5, -303.22727272727303}, {85.5, -303.22727272727303}, {85.5, -305.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_50.pin_n, dC_Load51.n) annotation(
    Line(points = {{55.5, -319.22727272727303}, {63.5, -319.22727272727303}, {63.5, -325.22727272727303}, {85.5, -325.22727272727303}}, color = {0, 0, 255}));
  connect(dC_Load51.n, ground62.p) annotation(
    Line(points = {{85.5, -325.22727272727303}, {85.5, -331.22727272727303}, {89.5, -331.22727272727303}, {89.5, -337.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_51.hPin_N, ground65.pin) annotation(
    Line(points = {{37.5, -373.22727272727303}, {23.5, -373.22727272727303}, {23.5, -397.22727272727303}, {29.5, -397.22727272727303}, {29.5, -393.22727272727303}}, color = {117, 80, 123}));
  connect(LED_Driver_51.pin_p, dC_Load52.p) annotation(
    Line(points = {{57.5, -357.22727272727303}, {87.5, -357.22727272727303}, {87.5, -359.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_51.pin_n, dC_Load52.n) annotation(
    Line(points = {{57.5, -373.22727272727303}, {65.5, -373.22727272727303}, {65.5, -379.22727272727303}, {87.5, -379.22727272727303}}, color = {0, 0, 255}));
  connect(dC_Load52.n, ground64.p) annotation(
    Line(points = {{87.5, -379.22727272727303}, {87.5, -385.22727272727303}, {91.5, -385.22727272727303}, {91.5, -391.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_52.hPin_N, ground67.pin) annotation(
    Line(points = {{37.5, -429.22727272727303}, {23.5, -429.22727272727303}, {23.5, -453.2272727272731}, {29.5, -453.2272727272731}, {29.5, -449.2272727272731}}, color = {117, 80, 123}));
  connect(LED_Driver_52.pin_p, dC_Load53.p) annotation(
    Line(points = {{57.5, -413.22727272727303}, {87.5, -413.22727272727303}, {87.5, -415.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_52.pin_n, dC_Load53.n) annotation(
    Line(points = {{57.5, -429.22727272727303}, {65.5, -429.22727272727303}, {65.5, -435.22727272727303}, {87.5, -435.22727272727303}}, color = {0, 0, 255}));
  connect(dC_Load53.n, ground66.p) annotation(
    Line(points = {{87.5, -435.22727272727303}, {87.5, -441.22727272727303}, {91.5, -441.22727272727303}, {91.5, -447.2272727272731}}, color = {0, 0, 255}));
  connect(LED_Driver_53.hPin_N, ground69.pin) annotation(
    Line(points = {{137.5, -261.22727272727303}, {123.5, -261.22727272727303}, {123.5, -285.22727272727303}, {129.5, -285.22727272727303}, {129.5, -281.22727272727303}}, color = {117, 80, 123}));
  connect(LED_Driver_53.pin_p, dC_Load54.p) annotation(
    Line(points = {{157.5, -245.22727272727303}, {187.5, -245.22727272727303}, {187.5, -247.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_53.pin_n, dC_Load54.n) annotation(
    Line(points = {{157.5, -261.22727272727303}, {165.5, -261.22727272727303}, {165.5, -267.22727272727303}, {187.5, -267.22727272727303}}, color = {0, 0, 255}));
  connect(dC_Load54.n, ground68.p) annotation(
    Line(points = {{187.5, -267.22727272727303}, {187.5, -273.22727272727303}, {191.5, -273.22727272727303}, {191.5, -279.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_54.hPin_N, ground71.pin) annotation(
    Line(points = {{137.5, -317.22727272727303}, {123.5, -317.22727272727303}, {123.5, -341.22727272727303}, {129.5, -341.22727272727303}, {129.5, -337.22727272727303}}, color = {117, 80, 123}));
  connect(LED_Driver_54.pin_p, dC_Load55.p) annotation(
    Line(points = {{157.5, -301.22727272727303}, {187.5, -301.22727272727303}, {187.5, -303.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_54.pin_n, dC_Load55.n) annotation(
    Line(points = {{157.5, -317.22727272727303}, {165.5, -317.22727272727303}, {165.5, -323.22727272727303}, {187.5, -323.22727272727303}}, color = {0, 0, 255}));
  connect(dC_Load55.n, ground70.p) annotation(
    Line(points = {{187.5, -323.22727272727303}, {187.5, -329.22727272727303}, {191.5, -329.22727272727303}, {191.5, -335.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_55.hPin_N, ground73.pin) annotation(
    Line(points = {{243.5, -263.22727272727303}, {229.5, -263.22727272727303}, {229.5, -287.22727272727303}, {235.5, -287.22727272727303}, {235.5, -283.22727272727303}}, color = {117, 80, 123}));
  connect(LED_Driver_55.pin_p, dC_Load56.p) annotation(
    Line(points = {{263.5, -247.22727272727303}, {293.5, -247.22727272727303}, {293.5, -249.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_55.pin_n, dC_Load56.n) annotation(
    Line(points = {{263.5, -263.22727272727303}, {271.5, -263.22727272727303}, {271.5, -269.22727272727303}, {293.5, -269.22727272727303}}, color = {0, 0, 255}));
  connect(dC_Load56.n, ground72.p) annotation(
    Line(points = {{293.5, -269.22727272727303}, {293.5, -275.22727272727303}, {297.5, -275.22727272727303}, {297.5, -281.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_56.hPin_N, ground75.pin) annotation(
    Line(points = {{243.5, -319.22727272727303}, {229.5, -319.22727272727303}, {229.5, -343.22727272727303}, {235.5, -343.22727272727303}, {235.5, -339.22727272727303}}, color = {117, 80, 123}));
  connect(LED_Driver_56.pin_p, dC_Load57.p) annotation(
    Line(points = {{263.5, -303.22727272727303}, {293.5, -303.22727272727303}, {293.5, -305.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_56.pin_n, dC_Load57.n) annotation(
    Line(points = {{263.5, -319.22727272727303}, {271.5, -319.22727272727303}, {271.5, -325.22727272727303}, {293.5, -325.22727272727303}}, color = {0, 0, 255}));
  connect(dC_Load57.n, ground74.p) annotation(
    Line(points = {{293.5, -325.22727272727303}, {293.5, -331.22727272727303}, {297.5, -331.22727272727303}, {297.5, -337.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_57.hPin_N, ground77.pin) annotation(
    Line(points = {{245.5, -373.22727272727303}, {231.5, -373.22727272727303}, {231.5, -397.22727272727303}, {237.5, -397.22727272727303}, {237.5, -393.22727272727303}}, color = {117, 80, 123}));
  connect(LED_Driver_57.pin_p, dC_Load58.p) annotation(
    Line(points = {{265.5, -357.22727272727303}, {295.5, -357.22727272727303}, {295.5, -359.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_57.pin_n, dC_Load58.n) annotation(
    Line(points = {{265.5, -373.22727272727303}, {273.5, -373.22727272727303}, {273.5, -379.22727272727303}, {295.5, -379.22727272727303}}, color = {0, 0, 255}));
  connect(dC_Load58.n, ground76.p) annotation(
    Line(points = {{295.5, -379.22727272727303}, {295.5, -385.22727272727303}, {299.5, -385.22727272727303}, {299.5, -391.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_58.hPin_N, ground79.pin) annotation(
    Line(points = {{245.5, -429.22727272727303}, {231.5, -429.22727272727303}, {231.5, -453.2272727272731}, {237.5, -453.2272727272731}, {237.5, -449.2272727272731}}, color = {117, 80, 123}));
  connect(LED_Driver_58.pin_p, dC_Load59.p) annotation(
    Line(points = {{265.5, -413.22727272727303}, {295.5, -413.22727272727303}, {295.5, -415.22727272727303}}, color = {0, 0, 255}));
  connect(LED_Driver_58.pin_n, dC_Load59.n) annotation(
    Line(points = {{265.5, -429.22727272727303}, {273.5, -429.22727272727303}, {273.5, -435.22727272727303}, {295.5, -435.22727272727303}}, color = {0, 0, 255}));
  connect(dC_Load59.n, ground78.p) annotation(
    Line(points = {{295.5, -435.22727272727303}, {295.5, -441.22727272727303}, {299.5, -441.22727272727303}, {299.5, -447.2272727272731}}, color = {0, 0, 255}));
  connect(ground80.pin, LED_Driver_19.hPin_N) annotation(
    Line(points = {{376, -272}, {379.3333333333332, -272}, {379.3333333333332, -273}, {385.3333333333332, -273}}, color = {92, 53, 102}));
  connect(ground81.pin, LED_Driver_29.hPin_N) annotation(
    Line(points = {{482, -274}, {482, -268}, {486.4137931034478, -268}, {486.4137931034478, -273.1034482758621}, {492.4137931034478, -273.1034482758621}}, color = {92, 53, 102}));
  connect(ground82.pin, LED_Driver_39.hPin_N) annotation(
    Line(points = {{590, -228}, {590, -222}, {595.6029258098223, -222}, {595.6029258098223, -227.32497387669787}, {601.6029258098223, -227.32497387669787}}, color = {92, 53, 102}));
  connect(dC_Load5.n, ground83.p) annotation(
    Line(points = {{235.33333333333334, 133.33333333333334}, {244, 133.33333333333334}, {244, 54}}, color = {0, 0, 255}));
  connect(dC_Load7.n, ground83.p) annotation(
    Line(points = {{234, 91}, {244, 91}, {244, 54}}, color = {0, 0, 255}));
  connect(dC_Load8.n, ground84.p) annotation(
    Line(points = {{325.3333333333333, 134}, {344, 134}, {344, 38}}, color = {0, 0, 255}));
  connect(dC_Load9.n, ground84.p) annotation(
    Line(points = {{325.3333333333333, 87.99999999999999}, {344, 87.99999999999999}, {344, 38}}, color = {0, 0, 255}));
  connect(dC_Load10.n, ground84.p) annotation(
    Line(points = {{325.3333333333333, 39.999999999999986}, {325.3333333333333, 38.99999999999999}, {344, 38.99999999999999}, {344, 38}}, color = {0, 0, 255}));
  connect(dC_Load11.n, ground85.p) annotation(
    Line(points = {{427.3333333333335, 135}, {450, 135}, {450, -278}}, color = {0, 0, 255}));
  connect(dC_Load12.n, ground85.p) annotation(
    Line(points = {{427.3333333333335, 86.99999999999999}, {450, 86.99999999999999}, {450, -278}}, color = {0, 0, 255}));
  connect(dC_Load13.n, ground85.p) annotation(
    Line(points = {{427.3333333333335, 41.000000000000014}, {450, 41.000000000000014}, {450, -278}}, color = {0, 0, 255}));
  connect(dC_Load14.n, ground85.p) annotation(
    Line(points = {{427.3333333333335, -6.999999999999986}, {450, -6.999999999999986}, {450, -278}}, color = {0, 0, 255}));
  connect(dC_Load15.n, ground85.p) annotation(
    Line(points = {{427.3333333333335, -49.00000000000004}, {450, -49.00000000000004}, {450, -278}}, color = {0, 0, 255}));
  connect(dC_Load16.n, ground85.p) annotation(
    Line(points = {{427.3333333333335, -90.99999999999999}, {450, -90.99999999999999}, {450, -278}}, color = {0, 0, 255}));
  connect(dC_Load17.n, ground85.p) annotation(
    Line(points = {{427.3333333333332, -133}, {450, -133}, {450, -278}}, color = {0, 0, 255}));
  connect(dC_Load18.n, ground85.p) annotation(
    Line(points = {{427.3333333333332, -181}, {450, -181}, {450, -278}}, color = {0, 0, 255}));
  connect(dC_Load19.n, ground85.p) annotation(
    Line(points = {{427.3333333333332, -227}, {450, -227}, {450, -278}}, color = {0, 0, 255}));
  connect(dC_Load20.n, ground85.p) annotation(
    Line(points = {{427.3333333333332, -275}, {427.3333333333332, -276.5}, {450, -276.5}, {450, -278}}, color = {0, 0, 255}));
  connect(dC_Load21.n, ground86.p) annotation(
    Line(points = {{534.4137931034481, 134.89655172413794}, {552, 134.89655172413794}, {552, -316}}, color = {0, 0, 255}));
  connect(dC_Load22.n, ground86.p) annotation(
    Line(points = {{534.4137931034481, 86.89655172413791}, {552, 86.89655172413791}, {552, -316}}, color = {0, 0, 255}));
  connect(dC_Load23.n, ground86.p) annotation(
    Line(points = {{534.4137931034481, 40.896551724137936}, {552, 40.896551724137936}, {552, -316}}, color = {0, 0, 255}));
  connect(dC_Load24.n, ground86.p) annotation(
    Line(points = {{534.4137931034481, -7.103448275862064}, {552, -7.103448275862064}, {552, -316}}, color = {0, 0, 255}));
  connect(dC_Load25.n, ground86.p) annotation(
    Line(points = {{534.4137931034481, -49.103448275862114}, {552, -49.103448275862114}, {552, -316}}, color = {0, 0, 255}));
  connect(dC_Load26.n, ground86.p) annotation(
    Line(points = {{534.4137931034481, -91.10344827586206}, {552, -91.10344827586206}, {552, -316}}, color = {0, 0, 255}));
  connect(dC_Load27.n, ground86.p) annotation(
    Line(points = {{534.4137931034478, -133.10344827586206}, {552, -133.10344827586206}, {552, -316}}, color = {0, 0, 255}));
  connect(dC_Load29.n, ground86.p) annotation(
    Line(points = {{534.4137931034478, -227.10344827586206}, {552, -227.10344827586206}, {552, -316}}, color = {0, 0, 255}));
  connect(dC_Load30.n, ground86.p) annotation(
    Line(points = {{534.4137931034478, -275.1034482758621}, {552, -275.1034482758621}, {552, -316}}, color = {0, 0, 255}));
  connect(dC_Load31.n, ground86.p) annotation(
    Line(points = {{532.4137931034484, -315.103448275862}, {532.4137931034484, -315.551724137931}, {552, -315.551724137931}, {552, -316}}, color = {0, 0, 255}));
  connect(dC_Load32.n, ground43.p) annotation(
    Line(points = {{643.6029258098226, 132.67502612330213}, {672, 132.67502612330213}, {672, -310}}, color = {0, 0, 255}));
  connect(dC_Load33.n, ground43.p) annotation(
    Line(points = {{643.6029258098226, 86.67502612330219}, {672, 86.67502612330219}, {672, -310}}, color = {0, 0, 255}));
  connect(dC_Load34.n, ground43.p) annotation(
    Line(points = {{643.6029258098226, 38.67502612330219}, {672, 38.67502612330219}, {672, -310}}, color = {0, 0, 255}));
  connect(dC_Load35.n, ground43.p) annotation(
    Line(points = {{643.6029258098226, -3.324973876697868}, {672, -3.324973876697868}, {672, -310}}, color = {0, 0, 255}));
  connect(dC_Load36.n, ground43.p) annotation(
    Line(points = {{643.6029258098226, -45.324973876697754}, {672, -45.324973876697754}, {672, -310}}, color = {0, 0, 255}));
  connect(dC_Load37.n, ground43.p) annotation(
    Line(points = {{643.6029258098223, -87.32497387669787}, {672, -87.32497387669787}, {672, -310}}, color = {0, 0, 255}));
  connect(dC_Load38.n, ground43.p) annotation(
    Line(points = {{643.6029258098223, -135.32497387669787}, {672, -135.32497387669787}, {672, -310}}, color = {0, 0, 255}));
  connect(dC_Load39.n, ground43.p) annotation(
    Line(points = {{643.6029258098223, -181.32497387669787}, {672, -181.32497387669787}, {672, -310}}, color = {0, 0, 255}));
  connect(dC_Load40.n, ground43.p) annotation(
    Line(points = {{643.6029258098223, -229.32497387669787}, {672, -229.32497387669787}, {672, -310}}, color = {0, 0, 255}));
  connect(dC_Load41.n, ground43.p) annotation(
    Line(points = {{646.1415136587552, -266.8405732198835}, {672, -266.8405732198835}, {672, -310}}, color = {0, 0, 255}));
  connect(dC_Load42.n, ground43.p) annotation(
    Line(points = {{644.8081803254219, -309.17390655321685}, {644.8081803254219, -309.5869532766084}, {672, -309.5869532766084}, {672, -310}}, color = {0, 0, 255}));
  connect(LED_Driver_27.pin_p, dC_Load28.p) annotation(
    Line(points = {{514, -160}, {520, -160}, {520, -154}, {532, -154}, {532, -160}}, color = {0, 0, 255}));
  connect(LED_Driver_27.pin_n, dC_Load28.n) annotation(
    Line(points = {{514, -176}, {520, -176}, {520, -186}, {532, -186}, {532, -180}}, color = {0, 0, 255}));
  connect(dC_Load28.n, ground86.p) annotation(
    Line(points = {{532, -180}, {552, -180}, {552, -316}}, color = {0, 0, 255}));
  connect(voltageSource.pinP_phA, LED_Driver_1.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 150}, {86, 150}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 112.33333333333334}, {87.33333333333334, 112.33333333333334}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_4.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 77.33333333333334}, {87.33333333333334, 77.33333333333334}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_5.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {184, 180}, {184, 151.33333333333337}, {193.33333333333331, 151.33333333333337}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_6.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {184, 180}, {184, 109}, {191.99999999999997, 109}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_7.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {274, 180}, {274, 152}, {283.3333333333333, 152}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_8.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {274, 180}, {274, 105.99999999999999}, {283.3333333333333, 105.99999999999999}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_9.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {274, 180}, {274, 57.999999999999986}, {283.3333333333333, 57.999999999999986}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_10.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {376, 180}, {376, 153}, {385.3333333333335, 153}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_11.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {376, 180}, {376, 104.99999999999999}, {385.3333333333335, 104.99999999999999}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_12.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {376, 180}, {376, 59.000000000000014}, {385.3333333333335, 59.000000000000014}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_13.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {376, 180}, {376, 11.000000000000014}, {385.3333333333335, 11.000000000000014}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_14.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {376, 180}, {376, -31.000000000000043}, {385.3333333333335, -31.000000000000043}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_15.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {376, 180}, {376, -72.99999999999999}, {385.3333333333335, -72.99999999999999}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_16.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {376, 180}, {376, -115}, {385.3333333333332, -115}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_17.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {376, 180}, {376, -163}, {385.3333333333332, -163}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_18.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {376, 180}, {376, -209}, {385.3333333333332, -209}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_19.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {376, 180}, {376, -257}, {385.3333333333332, -257}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_20.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {484, 180}, {484, 152.89655172413794}, {492.41379310344814, 152.89655172413794}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_21.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {484, 180}, {484, 104.89655172413791}, {492.41379310344814, 104.89655172413791}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_22.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {484, 180}, {484, 58.896551724137936}, {492.41379310344814, 58.896551724137936}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_23.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {484, 180}, {484, 10.896551724137936}, {492.41379310344814, 10.896551724137936}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_24.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {484, 180}, {484, -31.103448275862114}, {492.41379310344814, -31.103448275862114}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_25.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {484, 180}, {484, -73.10344827586206}, {492.41379310344814, -73.10344827586206}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_26.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {484, 180}, {484, -115.10344827586206}, {492.4137931034478, -115.10344827586206}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_27.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {484, 180}, {484, -160}, {494, -160}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_28.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {484, 180}, {484, -209.10344827586206}, {492.4137931034478, -209.10344827586206}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_29.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {484, 180}, {484, -257.1034482758621}, {492.4137931034478, -257.1034482758621}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_30.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {484.41379310344837, 180}, {484.41379310344837, -297.103448275862}, {490.41379310344837, -297.103448275862}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_31.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {601.6029258098226, 180}, {601.6029258098226, 150.67502612330213}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_32.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {601.6029258098226, 180}, {601.6029258098226, 104.67502612330219}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_33.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {601.6029258098226, 180}, {601.6029258098226, 56.67502612330219}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_34.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {601.6029258098226, 180}, {601.6029258098226, 14.675026123302132}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_35.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 178}, {595.6029258098226, 178}, {595.6029258098226, -27.324973876697754}, {601.6029258098226, -27.324973876697754}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_36.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 178}, {595.6029258098223, 178}, {595.6029258098223, -69.32497387669787}, {601.6029258098223, -69.32497387669787}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_37.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 178}, {595.6029258098223, 178}, {595.6029258098223, -117.32497387669787}, {601.6029258098223, -117.32497387669787}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_38.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 178}, {595.6029258098223, 178}, {595.6029258098223, -163.32497387669787}, {601.6029258098223, -163.32497387669787}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_39.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 178}, {595.6029258098223, 178}, {595.6029258098223, -211.32497387669787}, {601.6029258098223, -211.32497387669787}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_40.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 180}, {598.1415136587552, 180}, {598.1415136587552, -248.84057321988348}, {604.1415136587552, -248.84057321988348}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phA, LED_Driver_41.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -2.728504694715909}, {-248.9106308683949, 178}, {596.8081803254219, 178}, {596.8081803254219, -291.17390655321685}, {602.8081803254219, -291.17390655321685}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phB, LED_Driver_42.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -26}, {-108.73656543419744, -26}, {-108.73656543419744, -88.33333333333336}, {31.4375, -88.33333333333336}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phB, LED_Driver_2.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -26}, {-108.48656543419744, -26}, {-108.48656543419744, -44.33333333333336}, {31.9375, -44.33333333333336}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phB, LED_Driver_42.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -26}, {-108.73656543419744, -26}, {-108.73656543419744, -88.33333333333336}, {31.4375, -88.33333333333336}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phB, LED_Driver_43.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -26}, {-108.61156543419744, -26}, {-108.61156543419744, -136.33333333333337}, {31.6875, -136.33333333333337}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phB, LED_Driver_44.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -26}, {-108.86156543419744, -26}, {-108.86156543419744, -180.33333333333337}, {31.1875, -180.33333333333337}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phB, LED_Driver_45.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -26}, {114, -26}, {114, -44.33333333333336}, {131.6875, -44.33333333333336}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phB, LED_Driver_46.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -26}, {114, -26}, {114, -88.33333333333336}, {131.1875, -88.33333333333336}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phB, LED_Driver_47.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -26}, {214, -26}, {214, -44.33333333333336}, {227.6875, -44.33333333333336}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phB, LED_Driver_48.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -26}, {214, -26}, {214, -88.33333333333336}, {227.1875, -88.33333333333336}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phC, LED_Driver_49.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -49.27149530528409}, {-248.9106308683949, -247.22727272727303}, {35.5, -247.22727272727303}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phC, LED_Driver_50.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -49.27149530528409}, {-248.9106308683949, -303.22727272727303}, {35.5, -303.22727272727303}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phC, LED_Driver_51.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -49.27149530528409}, {-248.9106308683949, -357.22727272727303}, {37.5, -357.22727272727303}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phC, LED_Driver_52.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -49.27149530528409}, {-248.9106308683949, -413.22727272727303}, {37.5, -413.22727272727303}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phC, LED_Driver_53.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -49.27149530528409}, {-248.9106308683949, -245.22727272727303}, {137.5, -245.22727272727303}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phC, LED_Driver_54.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -49.27149530528409}, {-248.9106308683949, -301.22727272727303}, {137.5, -301.22727272727303}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phC, LED_Driver_55.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -49.27149530528409}, {-248.9106308683949, -247.22727272727303}, {243.5, -247.22727272727303}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phC, LED_Driver_56.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -49.27149530528409}, {-248.9106308683949, -303.22727272727303}, {243.5, -303.22727272727303}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phC, LED_Driver_57.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -49.27149530528409}, {-248.9106308683949, -357.22727272727303}, {245.5, -357.22727272727303}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phC, LED_Driver_58.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -49.27149530528409}, {-248.9106308683949, -413.22727272727303}, {245.5, -413.22727272727303}}, color = {92, 53, 102}));
  connect(voltageSource.pinP_phC, LED_Driver_3.hPin_P) annotation(
    Line(points = {{-248.9106308683949, -49.27149530528409}, {-248.9106308683949, -469.2272727272731}, {245.5, -469.2272727272731}}, color = {92, 53, 102}));
  annotation(
    Diagram(coordinateSystem(extent = {{-300, -300}, {300, 300}}, initialScale = 0.1), graphics = {Text(origin = {18, 18}, lineColor = {28, 108, 200}, extent = {{-182, 192}, {146, 164}}, textString = "Medium Office Building", fontSize = 9, horizontalAlignment = TextAlignment.Right)}),
    Icon(coordinateSystem(extent = {{-300, -300}, {300, 300}}, initialScale = 0.1)),
    experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-10, Interval = 1),
    __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl", ls = "totalpivot", nls = "newton"),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian,newInst -d=initialization ");
end Scenario_1_Data_Set_1_6;