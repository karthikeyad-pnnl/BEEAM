within HPF.Templates.Examples;
model medoff_model_2
    extends .HPF.Templates.Examples.medoff_template_2(redeclare replaceable .HPF.Templates.Data.Examples.medium_office_SD modelData,accable_phaseA(wireGaugeAC = HPF.Types.WireGaugeAC.gauge_12,length = 300),accable_phaseB(wireGaugeAC = HPF.Types.WireGaugeAC.gauge_12,length = 300),accable_phaseC(wireGaugeAC = HPF.Types.WireGaugeAC.gauge_12,length = 300),nEC_CableModel2(length = 100),nEC_CableModel3(length = 100),nEC_CableModel4(length = 100),aCload(ac_schedule(smoothness = Modelica.Blocks.Types.Smoothness.ConstantSegments,extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint), gain=PF1));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end medoff_model_2;
