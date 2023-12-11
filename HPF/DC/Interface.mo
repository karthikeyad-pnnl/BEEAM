within HPF.DC;
package Interface
  extends Modelica.Icons.InterfacesPackage;
    model DCLoad_configurable
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Boolean hasVariableLoad;
      parameter Modelica.SIunits.Power pwr_value(
        final min=0)=1;
      Modelica.Blocks.Interfaces.RealInput u if hasVariableLoad
        "Input Power"
        annotation (
          Placement(visible = true,
          transformation(extent = {{-22, 58}, {18, 98}}, rotation = 0),
          iconTransformation(origin={-120,80}, extent = {{-20, -20}, {20, 20}})));

      HPF.Utilities.ComponentProperties properties(ComponentType = "DC_Load");

      Modelica.Blocks.Interfaces.RealOutput P
        "Measured power consumption";

    equation
      if  hasVariableLoad then
        connect(P,u);
      else
        P=pwr_value;
      end if;
      P=i*v;

        annotation(Icon(coordinateSystem(initialScale = 0.1),
          graphics={  Rectangle(origin = {7, 10},
          extent = {{-67, 20}, {53, -40}},
              lineColor={0,0,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
          Line(origin = {-76, 0}, points = {{-16, 0}, {16, 0}}),
          Line(origin = {75, 0}, points = {{-15, 0}, {15, 0}}),
          Text(origin = {-4, -20}, extent = {{-150, 60}, {150, 100}},
          textString = "%name")}));
    end DCLoad_configurable;

  annotation (
    Icon(coordinateSystem(grid = {0, 0})),
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}}, grid = {0, 0})));
end Interface;
