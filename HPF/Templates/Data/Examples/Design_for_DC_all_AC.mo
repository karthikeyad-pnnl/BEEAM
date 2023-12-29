within HPF.Templates.Data.Examples;
record Design_for_DC_all_AC
  extends HPF.Templates.Data.ACConverterwLoads(
      nConverter=4,
      stepDown_indices={1,1,1,1},
      loadwStepDown={HPF.Templates.Data.LoadwStepDown(loadNames={"load1"},
          stepDownName="stepDown1"),HPF.Templates.Data.LoadwStepDown(loadNames={"load2"},
          stepDownName="stepDown2"),HPF.Templates.Data.LoadwStepDown(loadNames={"load3"},
          stepDownName="stepDown3"),HPF.Templates.Data.LoadwStepDown(loadNames={"load4"},
          stepDownName="stepDown4")},
      aCConverter={HPF.Templates.Data.ACConverter(name="converter1"),
          HPF.Templates.Data.ACConverter(name="converter2"),
          HPF.Templates.Data.ACConverter(name="converter3"),
          HPF.Templates.Data.ACConverter(name="converter4")});
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Design_for_DC_all_AC;
