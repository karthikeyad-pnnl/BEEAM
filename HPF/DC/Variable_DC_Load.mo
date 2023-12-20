within HPF.DC;
model Variable_DC_Load "Variable DC Load"
  extends Modelica.Electrical.Analog.Interfaces.OnePort;
  Modelica.Blocks.Interfaces.RealInput u "Input Power"
    annotation (Placement(transformation(extent = {{-22, 58}, {18, 98}}),
      iconTransformation(origin={-120,80}, extent = {{-20, -20}, {20, 20}})));

  HPF.Utilities.ComponentProperties properties(ComponentType = "DC_Load");

  Modelica.Blocks.Interfaces.RealOutput Pow
    "Measured power consumption"
    annotation (Placement(transformation(extent={{100,60},{140,100}}),
      iconTransformation(origin={120,80},  extent = {{-20, -20}, {20, 20}})));

equation
  connect(Pow,u);
  Pow=i*v;

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
end Variable_DC_Load;
