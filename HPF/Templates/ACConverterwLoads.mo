within HPF.Templates;
model ACConverterwLoads
    parameter Integer nConverter=1;
    parameter Integer nStepDown=2;
    .HPF.Templates.LoadwStepDown loadwStepDown[nStepDown](nLoad = 3,redeclare replaceable HPF.DC.DC2DC_Converters.StepDown twoPort,redeclare replaceable HPF.DC.Variable_DC_Load onePort) annotation(Placement(transformation(extent = {{20.0,20.0},{40.0,40.0}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .HPF.SinglePhase.Interface.ACDC_ConverterBase aCDC_ConverterBase[nConverter] constrainedby .HPF.SinglePhase.Interface.ACDC_ConverterBase annotation(Placement(transformation(extent = {{-40.0,18.0},{-20.0,38.0}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .HPF.SinglePhase.Interface.Source source constrainedby .HPF.SinglePhase.Interface.Source annotation(Placement(transformation(extent = {{-94,22},{-74,42}},origin = {0,0},rotation = 0)));
    .HPF.SinglePhase.Components.Ground ground annotation(Placement(visible = true,transformation(origin = {0.0,0.0},extent = {{-90.0,-56.0},{-58.0,-24.0}},rotation = 0.0)));
equation
    connect(aCDC_ConverterBase.pin_p,loadwStepDown.p) annotation(Line(points = {{-20,36},{-10,36},{-10,30},{20,30}},color = {0,0,255}));
    connect(aCDC_ConverterBase.pin_n,loadwStepDown.n) annotation(Line(points = {{-20,20},{14,20},{14,14},{46,14},{46,30},{40,30}},color = {0,0,255}));
    connect(source.pin_n,aCDC_ConverterBase.hPin_P) annotation(Line(points = {{-74,32},{-67,32},{-67,36},{-40,36}},color = {117,80,123}));
    connect(source.pin_p,aCDC_ConverterBase.hPin_N) annotation(Line(points = {{-94,32},{-100,32},{-100,16},{-68,16},{-68,20},{-40,20}},color = {92,53,102}));
    connect(aCDC_ConverterBase.hPin_N,ground.pin) annotation(Line(points = {{-40,20},{-74,20},{-74,-24}},color = {117,80,123}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end ACConverterwLoads;
