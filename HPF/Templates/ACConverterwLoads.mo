within HPF.Templates;
model ACConverterwLoads
    extends HPF.SinglePhase.Interface.TwoPinBase;
    parameter Integer nStepDown=2;
    parameter Integer nLoad= 3;
    .HPF.Templates.LoadwStepDown loadwStepDown[nStepDown](nLoad = fill(3, nLoad))
      annotation(Placement(transformation(extent = {{20.0,20.0},{40.0,40.0}},
        origin = {0.0,0.0},rotation = 0.0)));
    HPF.PowerConverters.SinglePhase.ACDC_EmpMdl aCDC_ConverterBase
    annotation (
      Placement(transformation(
        extent={{-40.0,18.0},{-20.0,38.0}},
        origin={0.0,0.0},
        rotation=0.0)));
    HPF.SinglePhase.Components.Ground ground
      annotation(Placement(visible = true,
        transformation(origin={24,-16},
        extent = {{-90.0,-56.0},{-58.0,-24.0}})));
  Modelica.Blocks.Interfaces.RealInput u[nStepDown,nLoad]
    annotation (
      Placement(transformation(
        extent={{-140.0,60.0},{-100.0,100.0}},
        origin={0,0},
        rotation=0.0),
      iconTransformation(extent={{-140,60},{-100,100}}, origin={118,-40})));

  DC.Ground ground1
    annotation (Placement(transformation(extent={{-10,-4},{10,16}})));
equation
    connect(aCDC_ConverterBase.pin_p,loadwStepDown.p)
      annotation(Line(points = {{-20,36},{-10,36},{-10,30},{20,30}},color = {0,0,255}));
    connect(aCDC_ConverterBase.pin_n,loadwStepDown.n)
      annotation(Line(points = {{-20,20},{14,20},{14,14},{46,14},{46,30},{40,30}},color = {0,0,255}));
    connect(pin_p, aCDC_ConverterBase.hPin_P)
      annotation (Line(points={{-100,0},{-70,0},{-70,36},{-40,36}},
        color={92,53,102}));
  connect(aCDC_ConverterBase.hPin_N, ground.pin) annotation (Line(points={{-40,
          20},{-50,20},{-50,-40}}, color={117,80,123}));
  connect(aCDC_ConverterBase.hPin_N, pin_n) annotation (Line(points={{-40,20},{
          -50,20},{-50,0},{100,0}}, color={117,80,123}));
  connect(aCDC_ConverterBase.pin_n, ground1.p)
    annotation (Line(points={{-20,20},{0,20},{0,16}}, color={0,0,255}));
  connect(u, loadwStepDown.u) annotation (Line(points={{-120,80},{0,80},{0,38},{
          18,38}}, color={0,0,127}));
    annotation(Icon(
      coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),
      graphics={  Rectangle(lineColor={0,0,0},fillColor={230,230,230},
      fillPattern = FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),
        Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end ACConverterwLoads;
