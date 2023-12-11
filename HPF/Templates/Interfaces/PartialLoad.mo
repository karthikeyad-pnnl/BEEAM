within HPF.Templates.Interfaces;
model PartialLoad
  extends Modelica.Electrical.Analog.Interfaces.OnePort;
  replaceable DC.Interface.DCLoad_configurable dCLoad
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  ComponentBus bus annotation (Placement(transformation(extent={{-50,50},{-10,
            90}}), iconTransformation(extent={{-96,60},{-56,100}})));
equation
  connect(dCLoad.n, n)
    annotation (Line(points={{10,0},{100,0}}, color={0,0,255}));
  connect(p, dCLoad.p)
    annotation (Line(points={{-100,0},{-10,0}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid)}),                      Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end PartialLoad;
