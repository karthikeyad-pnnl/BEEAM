within HPF.Templates;

model PAE_AC
  //   parameter Integer nStepDown=modelData.nStepDown
  inner parameter Real PF = 0.95;
  inner parameter Real PF1 = tan(acos(PF));
  parameter Real Vs = 7200;
  parameter Real kp = 3;
  parameter Real ks = 1;
  parameter Real km = 3;
  parameter Integer nConverter = modelData.nConverter;
  replaceable .HPF.PowerConverters.SinglePhase.ACDC_1pConverterBase aCConverter[modelData.nConverter](name=modelData.aCConverter.name,
    VDC_nom=modelData.aCConverter.V_Rect,
    P_nom=modelData.aCConverter.nomP,
    VAC_nom=modelData.aCConverter.nomV,
    vAngle=modelData.aCConverter.vAngle,
    P_stby=modelData.aCConverter.P_stby,
    P_DCmin=modelData.aCConverter.P_DCmin,
    alpha=modelData.aCConverter.alpha,
    beta=modelData.aCConverter.beta,
    gamma=modelData.aCConverter.gamma) constrainedby
    .HPF.PowerConverters.SinglePhase.ACDC_1pConverterBase
    annotation (Placement(transformation(extent={{-40.0,20.0},{-20.0,40.0}},rotation = 0.0,origin = {0.0,0.0})));
  .HPF.SinglePhase.Components.Ground ground
    annotation(Placement(visible = true,
      transformation(extent={{-56.25,-35},{-36.25,-15}})));
  replaceable parameter Data.ACConverterwLoads modelData
    annotation (Placement(transformation(extent={{60.0,60.0},{80.0,80.0}},rotation = 0.0,origin = {0.0,0.0})));

  .HPF.DC.Ground ground1
    annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
  .Modelica.Electrical.Analog.Basic.Resistor resistor11[modelData.nStepDown](
    R=modelData.R)
    annotation (Placement(visible=true,
      transformation(origin={-20,70}, extent={{-10,10},{10,-10}})));
  .HPF.Cables.NEC_CableModelDC PoE_cable[modelData.nStepDown](
    wireGaugeDC=modelData.wireGaugeDC,
    length=modelData.length)
    annotation (Placement(visible=true,
      transformation(
      origin={10,70},
      extent={{-10,-10},{10,10}})));

  inner .HPF.SystemDef     systemDef(fs=10e3, hrms={i for i in 1:2:2})
    annotation (Placement(visible = true,
      transformation(extent={{114.0,164.0},{142.0,188.0}},rotation = 0.0,origin = {0.0,0.0})));
    .HPF.Cables.NEC_CableModel nEC_CableModel(wireGaugeAC = .HPF.Types.WireGaugeAC.gauge_12,length = 60) annotation(Placement(transformation(extent = {{-68.0,42.0},{-48.0,62.0}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Sources.DC.FixedVoltage_VariablePower fixedVoltage_VariablePower(v_out = 660) annotation(Placement(transformation(extent = {{10.0,-10.0},{-10.0,10.0}},origin = {-138.5,105.25},rotation = 90.0)));
    .HPF.DC.Ground ground2 annotation(Placement(transformation(extent = {{-162.5,55.25},{-142.5,75.25}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.CombiTimeTable pv_schedule(tableOnFile = true) annotation(Placement(transformation(extent = {{-194.0,92.0},{-174.0,112.0}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Templates.LoadwStepDown loadwStepDown[modelData.nStepDown](redeclare replaceable HPF.DC.DC2DC_Converters.DummyShort dcdc_Converter, modelData=
         modelData.loadwStepDown) annotation(Placement(transformation(extent = {{26.0,34.0},{46.0,54.0}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Templates.LoadwStepDown loadwStepDown2[modelData.nStepDown](redeclare replaceable HPF.DC.DC2DC_Converters.StepDown dcdc_Converter, modelData=modelData.loadwStepDown2) annotation(Placement(transformation(extent = {{-66.0,156.0},{-86.0,176.0}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Templates.ACload aCload(aC_LoadIdealWye(V_nom = 277)) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-84.0,-30.0},rotation = 90.0)));
    replaceable .HPF.PowerConverters.ThreePhase.ACDC_3pConverterBase aCDC_3pConverterBase(VAC_nom = 277,VDC_nom = 660,P_nom = 600) constrainedby .HPF.PowerConverters.ThreePhase.ACDC_3pConverterBase annotation(Placement(transformation(extent = {{10.0,-10.0},{-10.0,10.0}},origin = {-78.0,88.0},rotation = -90.0)));
    .HPF.SinglePhase.Components.Ground GndAC annotation(Placement(HideResult = true,visible = true,transformation(origin = {0.0,0.0},extent = {{-227.33333333333334,-21.333333333333343},{-211.33333333333334,-5.333333333333343}},rotation = 0.0)));
    HPF.Transformers.ThreePhase.Symmetric.D1Y Dist_Xmer(Xs = 0.00665 * ks,Xp = 4.4882 * kp,Xm = 10366.7 * km,Rs = 0.0006488 * ks,Rp = 0.43785 * kp,Rc = 110450.1 * km,VSecRated = 480,VPrimRated = 12470) annotation(Placement(visible = true,transformation(extent = {{-148.33333333333334,10.666666666666657},{-98.33333333333334,50.66666666666666}},rotation = 0.0,origin = {0.0,0.0})));
    .HPF.Sources.ThreePhase.VoltageSource voltageSource2(vMag_phC = {Vs},vMag_phB = {Vs},vMag_phA = {Vs},vArg_phC = {2.0944},vArg_phB = {-2.0944},vArg_phA = {0}) annotation(Placement(visible = true,transformation(origin = {0.0,0.0},extent = {{-208.0,20.0},{-188.0,40.0}},rotation = 0.0)));
    .HPF.Cables.NEC_CableModelDC nEC_CableModelDC annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-52.0,138.0},rotation = -90.0)));
    replaceable .HPF.DC.DC2DC_Converters.Interface interface constrainedby .HPF.DC.DC2DC_Converters.Interface annotation(Placement(transformation(extent = {{-120.0,98.0},{-100.0,118.0}},origin = {0.0,0.0},rotation = 0.0)));

equation
  for i in 1:modelData.nConverter loop
    if i>1 then
     for j in (sum(modelData.stepDown_indices[1:(i-1)])+1):(sum(modelData.stepDown_indices[1:(i-1)])+modelData.stepDown_indices[i]) loop
       connect(aCConverter[i].pin_p, resistor11[j].p)
         annotation (Line(points={{-20,38},{-12,38},{-12,52},{-36,52},{-36,70},{-30,70}},
           color={0,0,255}));
       connect(loadwStepDown[j].n, aCConverter[i].pin_n)
         annotation (Line(points={{40,40},{60,40},{60,20},{10,20},{10,22},{-20,22}},
           color={0,0,255}));
       connect(resistor11[j].n, PoE_cable[j].p)
    annotation (Line(points={{-10,70},{0,70}}, color={0,0,255}));
       connect(PoE_cable[j].n, loadwStepDown[j].p) annotation (Line(points={{20,70},{30,70},{30,60},{14,60},{14,44},{24,44}}, color={0,0,255}));
       connect(loadwStepDown2[j].p,nEC_CableModelDC.p) annotation(Line(points = {{-122,146},{-128,146},{-128,112},{-120,112}},color = {0,0,255}));
       connect(loadwStepDown2[j].n,aCDC_3pConverterBase.pin_n) annotation(Line(points = {{-102,146},{-94,146},{-94,96},{-86,96}},color = {0,0,255}));

     end for;
    else
     for j in (1:modelData.stepDown_indices[1]) loop
       connect(aCConverter[1].pin_p, resistor11[j].p)
         annotation (Line(points={{-20,38},{-12,38},{-12,52},{-36,52},{-36,70},{-30,70}},
           color={0,0,255}));
       connect(loadwStepDown[j].n, aCConverter[1].pin_n)
         annotation (Line(points={{40,40},{60,40},{60,20},{10,20},{10,22},{-20,22}},
           color={0,0,255}));
       connect(resistor11[j].n, PoE_cable[j].p)
    annotation (Line(points={{-10,70},{0,70}}, color={0,0,255}));
       connect(PoE_cable[j].n, loadwStepDown[j].p) annotation (Line(points={{20,70},{30,70},{30,60},{14,60},{14,44},{24,44}}, color={0,0,255}));
       connect(loadwStepDown2[j].p,nEC_CableModelDC.p) annotation(Line(points = {{-122,146},{-128,146},{-128,112},{-120,112}},color = {0,0,255}));
       connect(loadwStepDown2[j].n,aCDC_3pConverterBase.pin_n) annotation(Line(points = {{-102,146},{-94,146},{-94,96},{-86,96}},color = {0,0,255}));
     end for;
    end if;
  connect(aCConverter[i].hPin_N, ground.pin)
    annotation (Line(points={{-40,22},{-46,22},{-46,-15},{-46.25,-15}},
      color={117,80,123}));
  connect(aCConverter[i].pin_n, ground1.p)
    annotation (Line(points={{-20,22},{10,22},{10,-20}}, color={0,0,255}));
  connect(nEC_CableModel.pin_n,aCConverter[i].hPin_L) annotation(Line(points = {{-50,50},{-45,50},{-45,38},{-40,38}},color = {117,80,123}));
  end for;
    connect(fixedVoltage_VariablePower.n,ground2.p) annotation(Line(points = {{-138.5,95.25},{-138.5,85.25},{-152.5,85.25},{-152.5,75.25}},color = {0,0,255}));
    connect(voltageSource2.pinN,GndAC.pin) annotation(Line(points = {{-198,17.25},{-198,-5.333333333333343},{-219.33333333333334,-5.333333333333343}},color = {117,80,123}));
    connect(voltageSource2.pinP_phA,Dist_Xmer.pinPrim_A) annotation(Line(points = {{-185.5,40},{-169.33333333333334,40},{-169.33333333333334,50.66666666666666},{-148.33333333333334,50.66666666666666}},color = {92,53,102}));
    connect(Dist_Xmer.pinSec_A,nEC_CableModel.pin_p) annotation(Line(points = {{-98.33333333333334,54.66666666666666},{-83.16666666666667,54.66666666666666},{-83.16666666666667,52},{-68,52}},color = {92,53,102}));
    connect(aCDC_3pConverterBase.hPin_A,Dist_Xmer.pinSec_A) annotation(Line(points = {{-70,78},{-70,54.66666666666666},{-98.33333333333334,54.66666666666666}},color = {92,53,102}));
    connect(aCDC_3pConverterBase.hPin_N,Dist_Xmer.pinSec_N) annotation(Line(points = {{-86,78},{-86,6.666666666666657},{-98.33333333333334,6.666666666666657}},color = {117,80,123}));
    connect(aCload.hPin_A,Dist_Xmer.pinSec_A) annotation(Line(points = {{-85.6,-14.6},{-85.6,54.66666666666666},{-98.33333333333334,54.66666666666666}},color = {92,53,102}));
    connect(aCload.hPin_N,Dist_Xmer.pinSec_N) annotation(Line(points = {{-79,-14.6},{-61,-14.6},{-61,6.666666666666657},{-98.33333333333334,6.666666666666657}},color = {117,80,123}));
    connect(pv_schedule.y[1],fixedVoltage_VariablePower.p_out) annotation(Line(points = {{-173,102},{-159.75,102},{-159.75,105.25},{-146.5,105.25}},color = {0,0,127}));
    connect(voltageSource2.pinP_phB,Dist_Xmer.pinPrim_B) annotation(Line(points = {{-185.5,30},{-166.91666666666669,30},{-166.91666666666669,30.666666666666657},{-148.33333333333334,30.666666666666657}},color = {92,53,102}));
    connect(voltageSource2.pinP_phC,Dist_Xmer.pinPrim_C) annotation(Line(points = {{-185.5,20},{-185.5,4.666666666666657},{-148.33333333333334,4.666666666666657},{-148.33333333333334,10.666666666666657}},color = {92,53,102}));

    connect(aCDC_3pConverterBase.hPin_B,Dist_Xmer.pinSec_B) annotation(Line(points = {{-75,78},{-75,38.66666666666666},{-98.33333333333334,38.66666666666666}},color = {92,53,102}));
    connect(aCDC_3pConverterBase.hPin_C,Dist_Xmer.pinSec_C) annotation(Line(points = {{-80,78},{-80,22.666666666666657},{-98.33333333333334,22.666666666666657}},color = {92,53,102}));
    connect(aCload.hPin_B,Dist_Xmer.pinSec_B) annotation(Line(points = {{-83.6,-14.599999999999998},{-83.6,38.66666666666666},{-98.33333333333334,38.66666666666666}},color = {92,53,102}));
    connect(aCload.hPin_C,Dist_Xmer.pinSec_C) annotation(Line(points = {{-81.6,-14.6},{-81.6,22.666666666666657},{-98.33333333333334,22.666666666666657}},color = {92,53,102}));
    connect(Dist_Xmer.pinSec_N,ground.pin) annotation(Line(points = {{-98.33333333333334,6.666666666666657},{-46.25,6.666666666666657},{-46.25,-15}},color = {117,80,123}));
    connect(nEC_CableModelDC.n,aCDC_3pConverterBase.pin_p) annotation(Line(points = {{-52,128},{-70,128},{-70,98}},color = {0,0,255}));
    connect(fixedVoltage_VariablePower.p,interface.p1) annotation(Line(points = {{-138.5,115.25},{-138.5,124},{-120,124},{-120,118}},color = {0,0,255}));
    connect(fixedVoltage_VariablePower.n,interface.n1) annotation(Line(points = {{-138.5,95.25},{-138.5,89.25},{-120,89.25},{-120,98}},color = {0,0,255}));
    connect(interface.n2,aCDC_3pConverterBase.pin_n) annotation(Line(points = {{-100,98},{-100,92},{-93,92},{-93,110},{-86,110},{-86,98}},color = {0,0,255}));
    connect(interface.n2,ground2.p) annotation(Line(points = {{-100,98},{-100,86.625},{-152.5,86.625},{-152.5,75.25}},color = {0,0,255}));
    connect(interface.p2,aCDC_3pConverterBase.pin_p) annotation(Line(points = {{-100,118},{-100,124},{-70,124},{-70,98}},color = {0,0,255}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent={{-100,-100},
            {100,100}}),                                                                                   graphics={                                                                                                                            Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString
            =                                                                                                                                                                                                        "%name")}),
      Diagram(coordinateSystem(extent={{-160,-100},{160,100}})));
end PAE_AC;
