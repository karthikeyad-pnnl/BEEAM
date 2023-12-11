within HPF.Templates;
model VariableLoad
  extends HPF.Templates.Interfaces.PartialLoad(
    redeclare final HPF.DC.Variable_DC_Load dCLoad);
equation
  connect(bus.uLoad, dCLoad.u) annotation (Line(
      points={{-30,70},{0,70},{0,5},{0.2,5}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}},
      horizontalAlignment=TextAlignment.Right));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end VariableLoad;
