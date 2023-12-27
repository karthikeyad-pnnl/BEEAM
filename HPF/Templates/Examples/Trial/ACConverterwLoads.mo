within HPF.Templates.Examples.Trial;
model ACConverterwLoads
  extends HPF.Templates.ACConverterwLoads(
    redeclare HPF.PowerConverters.SinglePhase.ACDC_EmpMdl aCDC_ConverterBase(
      name=modelData.acdcConverter_name,
    V_Rect=modelData.V_Rect,
    nomP=modelData.nomP,
    nomV=modelData.nomV,
    vAngle=modelData.vAngle,
    P_stby=modelData.P_stby,
    P_DCmin=modelData.P_DCmin,
      modelFileName=modelData.acdcConverter_modelFileName),
     redeclare HPF.Templates.Examples.Trial.LoadwStepDown loadwStepDown(modelData
        =modelData.loadwStepDown));

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ACConverterwLoads;
