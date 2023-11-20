within HPF.Templates;
model LoadwStepDown
    extends Modelica.Electrical.Analog.Interfaces.OnePort;
    parameter Integer nLoad;
    parameter Boolean hasVariableLoad;// = Modelica.Math.BooleanVectors.anyTrue(onePort.loadType == fill(HPF.DC.DCLoadTypes.VariableLoad, nLoad));
    replaceable .Modelica.Electrical.Analog.Interfaces.TwoPort twoPort constrainedby .Modelica.Electrical.Analog.Interfaces.TwoPort annotation(Placement(transformation(extent = {{-50.0,-8.666666666666666},{-30.0,11.333333333333334}},origin = {0.0,0.0},rotation = 0.0)),choices(
        choice(redeclare replaceable HPF.DC.DC2DC_Converters.StepDown twoPort
          "DC step down"),
        choice(redeclare replaceable HPF.DC.DC2DC_Converters.DummyShort twoPort
          "No step down")));
    replaceable HPF.DC.Interface.DCLoad onePort[nLoad] constrainedby HPF.DC.Interface.DCLoad annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {28.0,0.0},rotation = -90.0)),choices(
        choice(redeclare replaceable HPF.DC.Variable_DC_Load onePort
          "Variable DC load"),
        choice(redeclare replaceable HPF.DC.DC_Load onePort
          "Constant DC load")));
    .Modelica.Blocks.Interfaces.RealInput u[nLoad] if hasVariableLoad annotation(Placement(transformation(extent = {{-140.0,60.0},{-100.0,100.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    hasVariableLoad = Modelica.Math.BooleanVectors.anyTrue(onePort.loadType == fill(HPF.DC.DCLoadTypes.VariableLoad, nLoad));
    for i in 1:nLoad loop
    connect(twoPort.p2,onePort[i].p) annotation(Line(points = {{-30,11.333333333333334},{-30,19.333333333333336},{28,19.333333333333336},{28,13.333333333333334}},color = {0,0,255}));
    connect(twoPort.n2,onePort[i].n) annotation(Line(points = {{-30,-8.666666666666666},{-30,-14.666666666666666},{28,-14.666666666666666},{28,-6.666666666666666}},color = {0,0,255}));
    if hasVariableLoad then
    connect(u[i], onePort[i].u);
    end if;
    end for;
    connect(p,twoPort.p1) annotation(Line(points = {{-100,0},{-100,17.333333333333336},{-50,17.333333333333336},{-50,11.333333333333334}},color = {0,0,255}));
    connect(twoPort.n1,n) annotation(Line(points = {{-50,-8.666666666666666},{-50,-24},{100,-24},{100,0}},color = {0,0,255}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end LoadwStepDown;
