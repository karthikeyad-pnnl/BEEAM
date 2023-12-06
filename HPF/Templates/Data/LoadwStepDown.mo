within HPF.Templates.Data;
record LoadwStepDown
  extends Modelica.Icons.Record;
  parameter Integer nLoad;
  parameter HPF.Data.ConverterModels.DC2DC_StepDown.ModelData stepDownData
    annotation (Placement(transformation(extent={{60,60},{80,80}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end LoadwStepDown;
