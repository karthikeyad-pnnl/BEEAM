within HPF.Templates;
model ACConverterwLoads
    extends HPF.SinglePhase.Interface.TwoPinBase;
    parameter Integer nConverter=1;
    parameter Integer nStepDown=2;
    parameter Integer nLoad= 3;
    .HPF.Templates.LoadwStepDown loadwStepDown[nStepDown](nLoad = 3,redeclare replaceable HPF.DC.DC2DC_Converters.StepDown twoPort,redeclare replaceable HPF.DC.Variable_DC_Load onePort) annotation(Placement(transformation(extent = {{20.0,20.0},{40.0,40.0}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .HPF.SinglePhase.Interface.ACDC_ConverterBase aCDC_ConverterBase[nConverter] constrainedby
    .HPF.SinglePhase.Interface.ACDC_ConverterBase                                                                                                        annotation(Placement(transformation(extent = {{-40.0,18.0},{-20.0,38.0}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.SinglePhase.Components.Ground ground annotation(Placement(visible = true,transformation(origin={24,-16},   extent = {{-90.0,-56.0},{-58.0,-24.0}},rotation = 0.0)));
  Modelica.Blocks.Interfaces.RealInput u[nLoad] if hasVariableLoad
    annotation(Placement(transformation(extent = {{-140.0,60.0},{-100.0,100.0}},origin={0,0},      rotation = 0.0),
        iconTransformation(extent={{-140,60},{-100,100}}, origin={118,-40})));
equation
    connect(aCDC_ConverterBase.pin_p,loadwStepDown.p) annotation(Line(points = {{-20,36},{-10,36},{-10,30},{20,30}},color = {0,0,255}));
    connect(aCDC_ConverterBase.pin_n,loadwStepDown.n) annotation(Line(points = {{-20,20},{14,20},{14,14},{46,14},{46,30},{40,30}},color = {0,0,255}));
    connect(aCDC_ConverterBase.hPin_N,ground.pin) annotation(Line(points={{-40,20},
          {-50,20},{-50,-40}},                                                                           color = {117,80,123}));
  connect(u[1], loadwStepDown[1].u[1]) annotation (Line(points={{-120,66.6667},
          {8,66.6667},{8,36.6667},{18,36.6667}}, color={0,0,127}));
  connect(aCDC_ConverterBase[1].hPin_P, pin_p) annotation (Line(points={{-40,36},
          {-70,36},{-70,0},{-100,0}}, color={92,53,102}));
  connect(aCDC_ConverterBase[1].hPin_N, pin_n) annotation (Line(points={{-40,20},
          {-50,20},{-50,0},{100,0}}, color={117,80,123}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={  Rectangle(lineColor={0,0,0},fillColor={230,230,230},
            fillPattern =                                                                                                                                                              FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString
            =                                                                                                                                                                                                        "%name")}));
end ACConverterwLoads;
