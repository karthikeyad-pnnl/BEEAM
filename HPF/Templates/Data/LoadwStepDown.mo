within HPF.Templates.Data;
record LoadwStepDown
  extends Modelica.Icons.Record;
  parameter Integer nLoad=1;
  parameter String loadNames[nLoad]=fill("", nLoad);
  parameter String stepDownName="";

  parameter Modelica.Units.SI.Resistance R[nLoad]=fill(1, nLoad)
    "Resistance in series with load";
  parameter HPF.Data.ConverterModels.DC2DC_StepDown.ModelData stepDownData
    annotation (Placement(transformation(extent={{60,60},{80,80}})));

  parameter String tableName[nLoad]=fill("schedule",  nLoad)
    "Table name on file or in function usertab (see docu)";
  parameter String fileName[nLoad]=fill("/media/sf_Project_Codes/BEEAM/HPF/Data/load_profiles/schedule.txt", nLoad)
    "File where matrix is stored";
  parameter Types.WireGaugeDC wireGaugeDC[nLoad]=fill(HPF.Types.WireGaugeDC.guage_POE_VHC,nLoad);
  parameter Real length[nLoad]=fill(30,nLoad) "Length of wire";

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end LoadwStepDown;
