within HPF.Templates.Examples;
model LoadwStepDown
  extends Modelica.Icons.Example;
    HPF.Templates.Examples.Trial.LoadwStepDown loadwStepDown(nLoad = 3) annotation(Placement(transformation(extent = {{4.0,26.0},{24.0,46.0}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.Sources.DC.FixedVoltage_FixedCurrent fixedVoltage_FixedCurrent(v_out = 120,i_out = 10) annotation(Placement(transformation(extent = {{-54.0,6.0},{-34.0,26.0}},origin = {0.0,0.0},rotation = 0.0)));
    .HPF.DC.Ground ground annotation(Placement(transformation(extent = {{-70.0,-30.0},{-50.0,-10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant const(k = 10) annotation(Placement(transformation(extent = {{-60,50},{-40,70}},origin = {0,0},rotation = 0)));
    .HPF.Templates.LoadwStepDown loadwStepDown2(
    redeclare replaceable DC.DC2DC_Converters.DummyShort twoPort "No step down",                               nLoad = 2,
    redeclare replaceable DC.DC_Load onePort "Constant DC load",                                                                                                      hasVariableLoad = false) annotation(Placement(transformation(extent = {{-2.0,-38.0},{18.0,-18.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(fixedVoltage_FixedCurrent.n,loadwStepDown.p) annotation(Line(points = {{-34,16},{4,16},{4,36}},color = {0,0,255}));
    connect(loadwStepDown.n,fixedVoltage_FixedCurrent.p) annotation(Line(points = {{24,36},{24,0},{-60,0},{-60,16},{-54,16}},color = {0,0,255}));
    connect(ground.p,fixedVoltage_FixedCurrent.p) annotation(Line(points = {{-60,-10},{-60,16},{-54,16}},color = {0,0,255}));
    if loadwStepDown.hasVariableLoad then
    for i in 1:loadwStepDown.nLoad loop
    connect(const.y,loadwStepDown.u[i]) annotation(Line(points={{-39,60},{2,60},
              {2,44}},                                                                        color = {0,0,127}));
    end for;
    end if;
    connect(fixedVoltage_FixedCurrent.n,loadwStepDown2.p) annotation(Line(points = {{-34,16},{-22,16},{-22,-28},{-2,-28}},color = {0,0,255}));
    connect(loadwStepDown2.n,ground.p) annotation(Line(points = {{18,-28},{26,-28},{26,-4},{-60,-4},{-60,-10}},color = {0,0,255}));
    if loadwStepDown2.hasVariableLoad then
    for i in 1:loadwStepDown2.nLoad loop
    connect(const.y,loadwStepDown2.u[i]) annotation(Line(points = {{-39,60},{-4,60},{-4,-20}},color = {0,0,127}));
    end for;
    end if;
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={                                                                                                                            Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString=
                                                                                                                                                                                                        "%name")}));
end LoadwStepDown;
