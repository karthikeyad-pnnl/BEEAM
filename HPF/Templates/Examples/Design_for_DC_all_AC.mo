within HPF.Templates.Examples;
model Design_for_DC_all_AC
  extends Modelica.Icons.Example;
  extends HPF.Templates.Examples.Trial.ACConverterwLoads(
    redeclare Design_for_DC_Distributed_DC modelData,systemDef(hrms = {i for i in 1:2:3}));

  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}})),                                        Diagram(
        coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}})));
end Design_for_DC_all_AC;
