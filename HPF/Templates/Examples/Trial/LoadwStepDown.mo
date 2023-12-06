within HPF.Templates.Examples.Trial;
model LoadwStepDown
    extends HPF.Templates.LoadwStepDown(
      redeclare HPF.Templates.VariableLoad onePort,
      redeclare HPF.DC.DC2DC_Converters.StepDown twoPort);
equation
    if hasVariableLoad then
    for i in 1:nLoad loop
    end for;
    end if;
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={  Rectangle(lineColor={0,0,0},fillColor={230,230,230},
            fillPattern =                                                                                                                                                              FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString
            =                                                                                                                                                                                           "%name")}));
end LoadwStepDown;
