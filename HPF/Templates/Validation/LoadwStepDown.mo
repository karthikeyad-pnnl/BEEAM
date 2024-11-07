within HPF.Templates.Validation;
model LoadwStepDown
    extends Modelica.Icons.Example;
    .HPF.Templates.LoadwStepDown loadwStepDown(modelData=loadwStepDown2) annotation(Placement(transformation(extent = {{70,-10},{90,10}},origin = {0,0},rotation = 0)));
    .HPF.Templates.Data.LoadwStepDown loadwStepDown2(
          nLoad=1,
          loadNames={"load1"},
          stepDownName="stepDown1",
          stepDownData=HPF.Data.ConverterModels.DC2DC_StepDown.Laptop_18V_90W_LapChrg4(Pnom=6360),
          Pnom={6360},
          R={123},
          tableName={"L1-Core-Lights"},
          fileName={ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L1_Light_LP_garbledText.txt")})
        annotation(Placement(transformation(extent = {{-4,52},{16,72}},origin = {0,0},rotation = 0)));
    .HPF.Sources.DC.FixedVoltage_VariablePower fixedVoltage_VariablePower(v_out = 220) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {16.0,0.0},rotation = -180.0)));
    .Modelica.Blocks.Sources.Constant const(k = 100) annotation(Placement(transformation(extent = {{-36,-28},{-16,-8}},origin = {0,0},rotation = 0)));
    .HPF.DC.Ground ground annotation(Placement(transformation(extent = {{74,-58},{94,-38}},origin = {0,0},rotation = 0)));
equation
    connect(fixedVoltage_VariablePower.p,loadwStepDown.p) annotation(Line(points = {{26,1.2246467991473533e-15},{48,1.2246467991473533e-15},{48,0},{70,0}},color = {0,0,255}));
    connect(const.y,fixedVoltage_VariablePower.p_out) annotation(Line(points = {{-15,-18},{16,-18},{16,-8}},color = {0,0,127}));
    connect(fixedVoltage_VariablePower.n,loadwStepDown.n) annotation(Line(points = {{6,-1.2246467991473533e-15},{0,-1.2246467991473533e-15},{0,16},{96,16},{96,0},{90,0}},color = {0,0,255}));
    connect(ground.p,fixedVoltage_VariablePower.n) annotation(Line(points = {{84,-38},{84,-32},{0,-32},{0,-1.2246467991473533e-15},{6,-1.2246467991473533e-15}},color = {0,0,255}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end LoadwStepDown;
