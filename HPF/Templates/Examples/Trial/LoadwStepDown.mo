within HPF.Templates.Examples.Trial;
model LoadwStepDown
    extends HPF.Templates.LoadwStepDown(
      redeclare HPF.DC.DC2DC_Converters.StepDown dcdc_Converter(modelData=
          modelData.stepDownData, name=modelData.stepDownName));

    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={  Rectangle(lineColor={0,0,0},fillColor={230,230,230},
            fillPattern =                                                                                                                                                              FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}})}));
end LoadwStepDown;
