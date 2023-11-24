within HPF.DC;
package Interface
  extends Modelica.Icons.InterfacesPackage;
    partial model DCLoad
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter HPF.DC.DCLoadTypes loadType
      annotation(Dialog(enable=false));
      final parameter Boolean hasVariableLoad = loadType == HPF.DC.DCLoadTypes.VariableLoad;


      Modelica.Blocks.Interfaces.RealInput u(start = 0) if hasVariableLoad
        "Input Power"
        annotation (
        Placement(visible = true, transformation(extent = {{-22, 58}, {18, 98}}, rotation = 0), iconTransformation(origin = {2, 50}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));

      HPF.Utilities.ComponentProperties properties(ComponentType = "DC_Load");
        annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={  Rectangle(lineColor={0,0,0},fillColor={230,230,230},
                fillPattern =                                                                                                                                                              FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString
              =                                                                                                                                                                                                        "%name")}));
    end DCLoad;

  annotation (
    Icon(coordinateSystem(grid = {0, 0})),
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}}, grid = {0, 0})));
end Interface;
