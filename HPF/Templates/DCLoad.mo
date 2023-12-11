within HPF.Templates;
model DCLoad "Component template for DC load"
  extends HPF.Templates.Interfaces.PartialLoad(
    redeclare final HPF.DC.DC_Load dCLoad);
  parameter Modelica.SIunits.Power pwr "Power consumption of load";
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end DCLoad;
