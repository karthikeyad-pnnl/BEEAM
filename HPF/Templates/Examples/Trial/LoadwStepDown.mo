within HPF.Templates.Examples.Trial;
model LoadwStepDown
    extends HPF.Templates.LoadwStepDown(
      redeclare HPF.DC.DC_Load onePort,
      redeclare HPF.DC.DC2DC_Converters.StepDown twoPort);
equation
    if hasVariableLoad then
    connect(u,onePort.u) annotation(Line(points = {{-120,80},{40,80},{40,3.133333333333335},{33,3.133333333333335}},color = {0,0,127}));
    end if;
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end LoadwStepDown;
