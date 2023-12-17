within HPF.Templates.Data;
record LoadwStepDown
  extends Modelica.Icons.Record;
  //Load data
  parameter Integer nLoad(
    final min=1)=1;
  parameter Boolean hasVariableLoad[nLoad]=fill(false, nLoad);
  parameter Modelica.SIunits.Power pwr_value[nLoad](
    final min=fill(0, nLoad))=fill(1, nLoad);

  //Step down data
  parameter HPF.Data.ConverterModels.DC2DC_StepDown.ModelData stepDownData
    annotation (Placement(transformation(extent={{60,60},{80,80}})));

  //Resistance
  parameter Modelica.SIunits.Resistance R[nLoad]
    "Resistance at temperature T_ref";

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end LoadwStepDown;
