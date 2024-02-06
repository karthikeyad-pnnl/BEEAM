within HPF.Templates.Data.Examples;
record Design_for_DC_all_AC
  extends HPF.Templates.Data.ACConverterwLoads(
      nConverter=4,
      stepDown_indices={1,1,1,1},
      R={0,0,0,0},
      wireGaugeDC={HPF.Types.WireGaugeDC.guage_POE_Patch,
        HPF.Types.WireGaugeDC.guage_POE_Patch,
        HPF.Types.WireGaugeDC.guage_POE_Patch,
        HPF.Types.WireGaugeDC.guage_POE_Patch},
      length={0,0,0,0},
      loadwStepDown={HPF.Templates.Data.LoadwStepDown(
          loadNames={"load1"},
          stepDownData=HPF.Data.ConverterModels.DC2DC_StepDown.Igor_PoE_Driver_53W(),
          R={0},
          tableName={"schedule"},
          fileName={ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/schedule.txt")}),
          HPF.Templates.Data.LoadwStepDown(
          loadNames={"load2"},
          stepDownData=HPF.Data.ConverterModels.DC2DC_StepDown.Igor_PoE_Driver_53W(),
          stepDownName="stepDown2",
          R={0},
          tableName={"schedule"},
          fileName={ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/schedule.txt")}),
          HPF.Templates.Data.LoadwStepDown(
          loadNames={"load3"},
          stepDownData=HPF.Data.ConverterModels.DC2DC_StepDown.Igor_PoE_Driver_53W(),
          stepDownName="stepDown3",
          R={0},
          tableName={"schedule"},
          fileName={ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/schedule.txt")}),
          HPF.Templates.Data.LoadwStepDown(
          loadNames={"load4"},
          stepDownData=HPF.Data.ConverterModels.DC2DC_StepDown.Igor_PoE_Driver_53W(),
          stepDownName="stepDown4",
          R={0},
          tableName={"schedule"},
          fileName={ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/schedule.txt")})},
      aCConverter={HPF.Templates.Data.ACConverter(name="converter1",modelFileName="HPF/Data/ConverterModels/SinglePhase/ACDC/osram.mat",
          V_Rect=45,
          nomP=29,
          nomV=120,
          vAngle=0,
          P_stby=0,
          P_DCmin=0.5),
          HPF.Templates.Data.ACConverter(name="converter2",modelFileName="HPF/Data/ConverterModels/SinglePhase/ACDC/osram.mat",
          V_Rect=45,
          nomP=29,
          nomV=120,
          vAngle=0,
          P_stby=0,
          P_DCmin=0.5),
          HPF.Templates.Data.ACConverter(name="converter3",modelFileName="HPF/Data/ConverterModels/SinglePhase/ACDC/osram.mat",
          V_Rect=45,
          nomP=29,
          nomV=120,
          vAngle=0,
          P_stby=0,
          P_DCmin=0.5),
          HPF.Templates.Data.ACConverter(name="converter4",modelFileName="HPF/Data/ConverterModels/SinglePhase/ACDC/osram.mat",
          V_Rect=45,
          nomP=29,
          nomV=120,
          vAngle=0,
          P_stby=0,
          P_DCmin=0.5)});
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Design_for_DC_all_AC;