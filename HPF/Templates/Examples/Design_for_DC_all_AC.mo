within HPF.Templates.Examples;
model Design_for_DC_all_AC
  extends Modelica.Icons.Example;
  extends HPF.Templates.Examples.Trial.ACConverterwLoads(
    redeclare HPF.Templates.Data.Examples.Design_for_DC_all_AC modelData);

  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}})),                                        Diagram(
        coordinateSystem(preserveAspectRatio=false, extent={{-180,-100},{100,100}})));
end Design_for_DC_all_AC;
