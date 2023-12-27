within HPF.Templates.Examples;
model ACConverterwLoads
  extends Modelica.Icons.Example;
  parameter Integer nConverters=3;
  HPF.Templates.Examples.Trial.ACConverterwLoads aCConverterwLoads[nConverters]
    annotation (Placement(transformation(extent={{0,0},{20,20}})));
  inner SystemDef     systemDef(fs=10e3, hrms={i for i in 1:2:20})     annotation (
    Placement(visible = true, transformation(origin={26,78},      extent = {{-14, -14}, {14, 10}}, rotation = 0)));
  SinglePhase.Components.Ground ground1
                                       annotation (
    Placement(visible = true, transformation(origin={-84,-28},     extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Sources.ThreePhase.VoltageSource voltageSource(
    vArg_phA={0.52196,5.0309,3.137,5.1211,0.88185,0.5405,2.7381,3.3571,3.1032,1.0556,
        4.7534,0.08957,4.2676,4.1244,4.4068},
    vArg_phB={4.7098,2.6393,0.15983,3.0248,0.54992,2.8356,0.30425,1.6224,5.1955,
        4.6578,1.421,1.561,2.3545,1.471,0.6687},
    vArg_phC={2.616,0.41259,4.8314,0.56289,3.7924,4.8133,4.8348,-0.2768,0.88781,
        2.6372,4.1405,4.1314,0.31627,0.0998,2.1076},
    vMag_phA={281.6099,0.52895,0.47049,0.73987,0.12572,0.73742,0.42769,0.058304,
        0.29207,0.058748,0.015748,0.02911,0.017013,0.0086381,0.017564},
    vMag_phB={281.5887,0.66547,0.46821,1.1624,0.27892,0.72691,0.37598,0.030611,0.254,
        0.065578,0.021447,0.041925,0.013833,0.0068935,0.013253},
    vMag_phC={281.39,0.46521,0.075759,1.0168,0.39967,0.60233,0.28322,0.061309,0.27537,
        0.028665,0.0058585,0.053376,0.017543,0.0048111,0.010129})                                                                                                                                                                                                         annotation (
    Placement(visible = true, transformation(origin={-84,8},       extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SinglePhase.Components.Ground ground2 annotation (
    Placement(visible = true, transformation(origin={-16,-30},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Transformers.ThreePhase.Symmetric.D1Y deltaWye(
    Rc=15117.5,
    Rp=8.333,
    Rs=1.4404E-01,
    Xm=2.3311e+03,
    Xp=3.3002,
    Xs=0.6197)                                                                                                                         annotation (
    Placement(transformation(extent={{-38,-2},{-18,18}})));
  Data.Examples.LocalConverter localConverter[nConverters]
    annotation (Placement(transformation(extent={{60,60},{80,80}})));
equation
  connect(voltageSource.pinN, ground1.pin)
    annotation (Line(points={{-84,-4.75},{-84,-18}}, color={117,80,123}));
  connect(deltaWye.pinSec_N,ground2. pin) annotation (
    Line(points={{-18,-4},{-16,-4},{-16,-20}},             color = {117, 80, 123}));
  connect(voltageSource.pinP_phC,deltaWye. pinPrim_C) annotation (
    Line(points={{-71.5,-2},{-38,-2}},         color = {92, 53, 102}));
  connect(voltageSource.pinP_phB,deltaWye. pinPrim_B) annotation (
    Line(points={{-71.5,8},{-38,8}},           color = {92, 53, 102}));
  connect(voltageSource.pinP_phA,deltaWye. pinPrim_A) annotation (
    Line(points={{-71.5,18},{-38,18}},       color = {92, 53, 102}));
  connect(deltaWye.pinSec_A, aCConverterwLoads[1].pin_p) annotation (Line(
        points={{-18,20},{-8,20},{-8,10},{0,10}}, color={92,53,102}));
  connect(deltaWye.pinSec_B, aCConverterwLoads[2].pin_p) annotation (Line(
        points={{-18,12},{-10,12},{-10,10},{0,10}}, color={92,53,102}));
  connect(deltaWye.pinSec_C, aCConverterwLoads[3].pin_p) annotation (Line(
        points={{-18,4},{-10,4},{-10,10},{0,10}}, color={92,53,102}));
  for i in 1:nConverters loop
    connect(aCConverterwLoads[1].pin_n, deltaWye.pinSec_N)
      annotation (Line(points={{20,10},{32,10},{32,-4},{-18,-4}},
        color={117,80,123}));
  end for;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ACConverterwLoads;
