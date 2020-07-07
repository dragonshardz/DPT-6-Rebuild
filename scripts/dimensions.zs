//aliases
var enderium	= <ore:ingotEnderium>;
var silver 		= <ore:ingotSilver>;
var mirrorglass	= <thaumcraft:mirrored_glass>;
var storagedisk	= <appliedenergistics2:material:39>;
var fluxbattery	= <thermalexpansion:capacitor:0>;
var wood_door	= <ore:doorWood>;
var wood_tdoor	= <ore:trapdoorWood>;
var salismundus	= <thaumcraft:salis_mundus>;

var manshrinker	= <compactmachines3:psd>;
var wood_ddoor	= <dimdoors:oak_dimensional_door>;
var wood_dtdoor	= <dimdoors:dimensional_trapdoor>;

//personal shrinking device
recipes.remove(manshrinker);
recipes.addShaped("PSD", manshrinker,
	[[enderium, mirrorglass, enderium],
	[enderium, storagedisk, enderium],
	[enderium, fluxbattery, enderium]]);

//add other wood trapdoors to oredict
wood_door.add(
	<rustic:olive_door>,
	<rustic:ironwood_door>,
	<natura:overworld_doors:*>,
	<engineersdoors:door_treated>,
	<engineersdoors:door_treated_ornate>,
	<engineersdoors:door_treated_reinforced>
	);

//add other wood doors to oredict
wood_tdoor.add(
	<engineersdoors:trapdoor_treated>,
	<malisisdoors:trapdoor_acacia>,
	<malisisdoors:trapdoor_dark_oak>,
	<malisisdoors:trapdoor_jungle>,
	<malisisdoors:trapdoor_spruce>
	);

//wood dimdoor
recipes.remove(wood_ddoor);
recipes.addShapeless("Wood DimDoor", wood_ddoor, [salismundus, silver, wood_door]);

//wood dimtrapdoor
recipes.remove(wood_dtdoor);
recipes.addShapeless("Wood DimTrapdoor", wood_dtdoor, [salismundus, silver, wood_tdoor]);