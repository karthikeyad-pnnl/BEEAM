within HPF.DC.DC2DC_Converters;
model DummyShort
    extends HPF.DC.DC2DC_Converters.Interface;
equation
    PLoss = 0;
    p1.i + p2.i = 0;
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,
      extent = {{-100.0,-100.0},{100.0,100.0}}),
      graphics={  Rectangle(lineColor={0,0,0},fillColor={230,230,230},
        fillPattern = FillPattern.Solid,
        extent={{-100.0,-100.0},{100.0,100.0}}),
        Text(lineColor={0,0,255},extent={{-150,150},{150,110}},
      textString = "%name")}));
end DummyShort;
