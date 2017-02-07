/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 20 Vehicles
private _vehicles = [
["CamoNet_ghex_open_F", [1639.19, 4218.1, 211.409], [0.67052, 0.741792, 0.0121619], [-0.0150098, -0.00282572, 0.999883], false],
["Exile_Sign_TraderCity", [1656.01, 4224.23, 212.612], [-0.535057, -0.844816, 0], [0, 0, 1], false],
["Exile_Sign_TraderCity", [2738.18, 11289.1, 136.901], [0.581414, -0.813608, 0], [0, 0, 1], false],
["Exile_Sign_AircraftCustoms", [10826.3, 4824.05, 11.6098], [0, 1, 0], [0, 0, 1], false],
["Exile_Sign_Aircraft", [10832.4, 4823.65, 11.7156], [0.0427631, 0.999085, 0], [0, 0, 1], false],
["Exile_Sign_TraderCity", [5716.48, 5433.74, 2.66865], [0.419571, 0.907722, 0], [0, 0, 1], false],
["Exile_Sign_TraderCity", [2666.76, 1167.5, 425.258], [0.537975, -0.842961, 0], [0, 0, 1], false],
["Exile_Sign_WasteDump", [1643.5, 4234.62, 211.654], [-0.731857, 0.681458, 0], [0, 0, 1], false],
["Exile_Sign_VehicleCustoms", [1641.66, 4216.68, 211.366], [-0.651441, -0.758699, 0], [0, 0, 1], false],
["Exile_Sign_Vehicles", [1637.34, 4220.16, 211.299], [-0.698014, -0.716084, 0], [0, 0, 1], false],
["Exile_ConcreteMixer", [9001.9, 7927.18, 168.991], [0.995777, 0.0917896, -0.0019447], [0.00195295, 0, 0.999998], true],
["Exile_ConcreteMixer", [4294.95, 2938.61, 209.238], [-0.357787, -0.933803, -0.00034436], [0.00124485, -0.000845734, 0.999999], true],
["Exile_ConcreteMixer", [11144.5, 9062.13, 67.6615], [-0.874995, 0.484133, 0.00042709], [0.000488106, 0, 1], true],
["Exile_ConcreteMixer", [5132.34, 4657.95, 164.919], [0.16759, -0.985856, -0.00125243], [0.00209981, -0.000913443, 0.999997], true],
["Exile_Sign_Food_Small", [3973.22, 9280.05, 151.71], [0.612585, 0.790404, 0], [0, 0, 1], false],
["Exile_Sign_Equipment_Small", [3981.38, 9274.11, 151.555], [0.566312, 0.824191, 0], [0, 0, 1], false],
["Exile_Sign_Hardware_Small", [3968.12, 9295.79, 151.64], [0.649056, 0.760741, 0], [0, 0, 1], false],
["Exile_Sign_Armory", [2743.7, 11254.2, 138.021], [0.0872435, -0.996187, 0], [0, 0, 1], false],
["Exile_Sign_Office", [4990.15, 10295.8, 235.564], [-0.553831, -0.832629, 0], [0, 0, 1], false],
["Exile_Sign_TraderCity", [5019.9, 10299.8, 234.383], [-0.900794, 0.434247, 0], [0, 0, 1], false]
];

{
    private _vehicle = (_x select 0) createVehicle (_x select 1);
    _vehicle allowDamage false;
    _vehicle setPosWorld (_x select 1);
    _vehicle setVectorDirAndUp [_x select 2, _x select 3];
    _vehicle enableSimulationGlobal (_x select 4);
    _vehicle setVariable ["ExileIsLocked", -1, true];
    
    if (_vehicle isKindOf "Exile_RussianRouletteChair") then
    {
        ExileRouletteChairs pushBack _vehicle;
        ExileRouletteChairPositions pushBack [_x select 1, getDir _vehicle];
    };
}
forEach _vehicles;

// 31 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["a3\structures_f\civ\camping\campingtable_f.p3d", [2734.75, 11243.4, 137.767], [0.997391, 0.0721832, -0.00114172], [0.00114471, 0, 0.999999]],
["a3\structures_f\civ\camping\campingtable_f.p3d", [2664.07, 1156.94, 423.302], [-0.999995, 0.00306607, 0], [0, 0, 1]],
["a3\structures_f\mil\cargo\cargo_hq_v1_f.p3d", [2658.88, 1160.3, 426.048], [0.99983, 0.0184247, 0], [0, 0, 1]],
["cup\weapons\cup_weapons_as50\cup_as50.p3d", [2665.11, 1156.65, 423.628], [0, 0.994359, 0.106067], [0.0416295, -0.105975, 0.993497]],
["cup\weapons\cup_weapons_huntingrifle\cup_huntingrifle.p3d", [2665.27, 1153.76, 423.628], [0, 0.994359, 0.106067], [0.0416295, -0.105975, 0.993497]],
["ca\buildings2\ind_cementworks\ind_vysypka\ind_vysypka.p3d", [4302.34, 2958.35, 212.977], [0, 1, 0], [0, 0, 1]],
["ca\buildings2\ind_cementworks\ind_vysypka\ind_vysypka.p3d", [5127.79, 4677.39, 169.217], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\campingtable_f.p3d", [3971.41, 9299.42, 151.306], [-0.69655, -0.717508, -0.000700566], [0, -0.000976388, 1]],
["a3\structures_f\civ\camping\ground_sheet_folded_yellow_f.p3d", [3971.74, 9299.08, 151.789], [0, 0.999989, 0.00467043], [-0.0238892, -0.0046691, 0.999704]],
["a3\structures_f\items\gadgets\compass_f.p3d", [3970.95, 9300.06, 151.718], [0, 0.99947, 0.0325678], [-0.0238917, -0.0325585, 0.999184]],
["exile_assets\model\exile_melee_axe.p3d", [3971.5, 9300.08, 152.333], [0, 1, 0.000976388], [0, -0.000976388, 1]],
["exile_assets\model\exile_item_beefparts.p3d", [3978.48, 9286.86, 151.355], [0, 1, 0], [0, 0, 1]],
["exile_assets\model\exile_item_cockonut.p3d", [3978.37, 9286.55, 151.33], [0, 0.999955, -0.00950571], [0, 0.00950571, 0.999955]],
["a3\structures_f_heli\items\food\ketchup_01_f.p3d", [3978.38, 9286.32, 151.434], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\structures_f_heli\items\food\tableware_01_stackofnapkins_f.p3d", [3978.17, 9286.06, 151.371], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\structures_f_heli\items\food\tableware_01_cup_f.p3d", [3977.88, 9286.23, 151.382], [0, 1, 0], [0.00109178, 0, 0.999999]],
["exile_assets\model\exile_item_beer.p3d", [3977.68, 9286.04, 151.332], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\structures_f\items\food\can_v2_f.p3d", [3977.86, 9285.72, 151.372], [0, 0.999663, 0.0259454], [-0.0259457, -0.0259367, 0.999327]],
["a3\structures_f\items\food\can_v1_f.p3d", [3978.1, 9286.34, 151.371], [0, 0.999663, 0.0259454], [0.055459, -0.0259055, 0.998125]],
["exile_assets\model\exile_item_energydrink.p3d", [3977.56, 9285.85, 151.332], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\structures_f\civ\camping\campingtable_f.p3d", [3986.28, 9282.56, 150.769], [-0.657376, -0.753563, 0.000453777], [0.000690285, 0, 1]],
["a3\structures_f\civ\camping\campingtable_f.p3d", [3984.64, 9279.81, 150.773], [0.761293, -0.648408, -0.00052551], [0.000690285, 0, 1]],
["a3\supplies_f_exp\ammoboxes\equipment_box_f.p3d", [3985.99, 9281.24, 150.747], [-0.66048, -0.750844, 0.000455919], [0.000690285, 0, 1]],
["a3\structures_f_epa\civ\constructions\portablelight_single_f.p3d", [3981.31, 9276.15, 151.452], [-0.233013, -0.972474, 0], [0, 0, 1]],
["a3\weapons_f\ammoboxes\ammobox_f.p3d", [2734.8, 11243, 138.458], [0.170103, -0.985426, -0.000185716], [0.00109178, 0, 0.999999]],
["a3\structures_f_epb\items\military\ammobox_rounds_f.p3d", [2734.5, 11244.1, 138.28], [0.999549, 0.0300001, -0.00109129], [0.00109178, 0, 0.999999]],
["a3\structures_f_epb\items\military\ammobox_rounds_f.p3d", [2734.57, 11243.7, 138.279], [0.99395, 0.109829, -0.00108518], [0.00109178, 0, 0.999999]],
["ca\buildings\furniture\hromada_beden_dekorativnix.p3d", [2735, 11245.2, 137.36], [-0.185562, 0.982633, 0.000212415], [0.00114471, 0, 0.999999]],
["ca\structures\furniture\tables\office_table_a\office_table_a.p3d", [4988.51, 10292.6, 235.775], [0.548377, 0.83623, -0.00125592], [0.00229024, 0, 0.999997]],
["a3\structures_f_heli\furniture\officechair_01_f.p3d", [4987.74, 10293.1, 236.451], [-0.999081, 0.0427945, 0.00228814], [0.00229024, 0, 0.999997]],
["a3\structures_f_heli\furniture\officecabinet_01_f.p3d", [4987.99, 10291.3, 236.54], [0.833486, -0.552537, -0.00190889], [0.00229024, 0, 0.999997]]
];

{
    private _simpleObject = createSimpleObject [_x select 0, _x select 1];
    _simpleObject setVectorDirAndUp [_x select 2, _x select 3];
    
    {
        if ((toLower _x) in _invisibleSelections) then 
        {
            _simpleObject hideSelection [_x, true];
        };
    }
    forEach (selectionNames _simpleObject);
}
forEach _simpleObjects;


////////////////////////////
// Let's load the time script

[]execVM "time.sqf"; 