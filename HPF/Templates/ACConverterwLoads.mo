within HPF.Templates;
model ACConverterwLoads
  extends HPF.SinglePhase.Interface.TwoPinBase;
//   parameter Integer nStepDown=modelData.nStepDown;

  replaceable HPF.Templates.LoadwStepDown loadwStepDown[modelData.nStepDown]
    annotation(Placement(transformation(extent={{20,30},{40,50}})));
  replaceable .HPF.SinglePhase.Interface.ACDC_ConverterBase aCDC_ConverterBase(
    name=modelData.acdcConverter_name,
    V_Rect=modelData.V_Rect,
    nomP=modelData.nomP,
    nomV=modelData.nomV,
    vAngle=modelData.vAngle,
    P_stby=modelData.P_stby,
    P_DCmin=modelData.P_DCmin) constrainedby
    HPF.SinglePhase.Interface.ACDC_ConverterBase
    annotation(Placement(transformation(extent={{-40,20},{-20,40}})));
  HPF.SinglePhase.Components.Ground ground
    annotation(Placement(visible = true,transformation(origin={4,-18},
    extent = {{-90.0,-56.0},{-58.0,-24.0}})));
  Data.ACConverterwLoads modelData
    annotation (Placement(transformation(extent={{60,60},{80,80}})));

  DC.Ground ground1
    annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor11[modelData.nStepDown](R=modelData.R)
    annotation (Placement(visible=true, transformation(origin={-20,70}, extent={
            {-10,10},{10,-10}})));
  Cables.NEC_CableModelDC PoE_cable[modelData.nStepDown](
    wireGaugeDC=modelData.wireGaugeDC,
    length=modelData.length)
    annotation (Placement(visible=true,
      transformation(
      origin={10,70},
      extent={{-10,-10},{10,10}})));

equation
  connect(pin_p, aCDC_ConverterBase.hPin_P) annotation (Line(points={{-100,0},{-80,
          0},{-80,38},{-40,38}}, color={92,53,102}));
  connect(aCDC_ConverterBase.hPin_N, pin_n) annotation (Line(points={{-40,22},{-70,
          22},{-70,0},{100,0}}, color={117,80,123}));
  connect(aCDC_ConverterBase.hPin_N, ground.pin) annotation (Line(points={{-40,22},
          {-70,22},{-70,-42}}, color={117,80,123}));
  if modelData.nStepDown>1 then
  for i in 1:modelData.nStepDown loop
  connect(loadwStepDown[i].n, aCDC_ConverterBase.pin_n)
    annotation (Line(points={{40,40},{72,40},{72,20},{10,20},{10,22},{-20,22}},
                                                                color={0,0,255}));
  connect(aCDC_ConverterBase.pin_p, resistor11[i].p) annotation (Line(points={{-20,
          38},{-10,38},{-10,54},{-40,54},{-40,70},{-30,70}}, color={0,0,255}));
  end for;
  else
    connect(loadwStepDown[1].n, aCDC_ConverterBase.pin_n)
    annotation (Line(points={{40,40},{80,40},{80,20},{10,20},{10,22},{-20,22}},
                                                                color={0,0,255}));
  connect(aCDC_ConverterBase.pin_p, resistor11[1].p) annotation (Line(points={{-20,38},
            {-10,38},{-10,54},{-50,54},{-50,70},{-30,70}},   color={0,0,255}));
  end if;
  connect(aCDC_ConverterBase.pin_n, ground1.p) annotation (Line(points={{-20,22},
          {10,22},{10,-20}},        color={0,0,255}));
  connect(resistor11.n, PoE_cable.p)
    annotation (Line(points={{-10,70},{0,70}}, color={0,0,255}));
  connect(PoE_cable.n, loadwStepDown.p) annotation (Line(points={{20,70},{30,70},
          {30,60},{10,60},{10,40},{20,40}}, color={0,0,255}));

    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={  Rectangle(lineColor={0,0,0},fillColor={230,230,230},
            fillPattern =                                                                                                                                                              FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString
            =                                                                                                                                                                                                        "%name")}));
end ACConverterwLoads;
