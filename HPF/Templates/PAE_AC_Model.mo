within HPF.Templates;
model PAE_AC_Model
    extends .HPF.Templates.PAE_AC(
    redeclare replaceable .HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple aCConverter(P_nom = {50},VAC_nom = {277},VDC_nom = {30},alpha = {0.01086013},beta = {0.0104616},gamma = {0.03206889},P_DCmin = {0}),
    redeclare HPF.Templates.ACload aCload(ac_schedule(tableName="ac_schedule", fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/AC_schedule_kW.txt")),aC_LoadIdealWye(V_nom = 277,P_nom = 100),gain(k = 1)),
    pv_schedule(fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/PV_schedule_kW.txt"),tableName = "pv_schedule"),
    systemDef(hrms = {i for i in 1:2:2}),redeclare replaceable .HPF.Templates.Data.Examples.PAE modelData,
    fixedVoltage_VariablePower(v_out = 660),redeclare replaceable .HPF.PowerConverters.ThreePhase.ACDC_3pInverterSimple aCDC_3pConverterBase(P_nom = 500,VDC_nom = 380,alpha = 0.01086013,beta = 0.0104616,gamma = 0.03206889),nEC_CableModel(length = 0),loadwStepDown2(redeclare replaceable HPF.DC.DC2DC_Converters.StepDown dcdc_Converter(modelData(alpha = 0,beta = 0,gamma = 0,Pnom = 50,V = 30))),redeclare replaceable .HPF.DC.DC2DC_Converters.StepDown interface(modelData(V = 380,Pnom = 600,alpha = 0.0041605,beta = 0.01546067,gamma = 0.00659505)),nEC_CableModelDC(length = 0));
    
equation
    connect(Dist_Xmer.pinSec_N,ground.pin) annotation(Line(points = {{-98.33333333333334,6.666666666666657},{-46.25,6.666666666666657},{-46.25,-15}},color = {117,80,123}));
end PAE_AC_Model;
