import mods.jei.JEI;

//material variables
var redstoneDust	= <minecraft:redstone>;
var redstoneServo	= <thermalfoundation:material:512>;
var plateTitAl		= <ore:plateTitaniumAluminide>;
var receptionCoil	= <thermalfoundation:material:513>;
var enderPearl		= <minecraft:ender_pearl>;
var ingotPlastic	= <industrialforegoing:plastic>;
var blockBioreactor	= <industrialforegoing:bioreactor>;
var txCoil			= <thermalfoundation:material:514>;
var stickTitAl		= <ore:stickTitaniumAluminide>;
var procCalculation	= <appliedenergistics2:material:23>;
var procLogic		= <appliedenergistics2:material:22>;
var procEngineering	= <appliedenergistics2:material:24>;
var redstoneTimer	= <immersivetech:connectors>;
var ingotCobalt		= <ore:ingotCobalt>;
var ingotTitAl		= <ore:ingotTitaniumAluminide>;
var dustCarbon		= <ore:dustHOPGraphite>;
var ingotHCarbon	= <ore:ingotHardCarbon>;
var ae2Storage1K	= <appliedenergistics2:material:35>;
var drawerTrim		= <ore:drawerTrim>;
var moonUnit		= <advancedrocketry:dataunit>;
var chargedQuartz	= <appliedenergistics2:material:1>;
var fluxCapacitor	= <thermalexpansion:capacitor:0>;
var plateSteel		= <ore:plateSteel>;
var storageCrate	= <immersiveengineering:wooden_device0:0>;
var trashcan		= <cfm:bin>;
var hopper			= <minecraft:hopper>;
var tankSHP			= <advancedrocketry:pressuretank:3>;
var bondagestraps	= <tconstruct:piggybackpack>;
var doorSteel		= <ore:doorSteel>;
var insulatedGlass	= <immersiveengineering:stone_decoration:8>;
var heavyPPlate		= <minecraft:heavy_weighted_pressure_plate>;
var conductorCoil	= <thermalfoundation:material:515>;
var rfDuct			= <thermaldynamics:duct_0:2>;
var servoMech		= <nuclearcraft:part:7>;
var formCore		= <appliedenergistics2:material:43>;
var bitWrench		= <extrabitmanipulation:bit_wrench>;
var woodCrafter		= <ore:craftingTableWood>;
var workbench		= <ore:workbench>;
var bit_chisel		= <chiselsandbits:chisel_diamond>;
var blockSteel		= <ore:blockSteel>;
var hardFluxCap		= <thermalexpansion:capacitor:1>;
var glassPane		= <minecraft:glass_plane>;
var brain			= <thaumcraft:brain>;
var flesh			= <minecraft:rotted_flesh>;
var goldNugs		= <minecraft:gold_nugget>;
var rocketSaw		= <advancedrocketry:sawbladeiron>;

//part variables
var partActuator	= <cyberware:component:0>;
var partBioreactor	= <cyberware:component:1>;
var partTitanMesh	= <cyberware:component:2>;
var partSSCircuit	= <cyberware:component:3>;
var partChromePlate	= <cyberware:component:4>;
var partFiberOptics	= <cyberware:component:5>;
var partFullereneMS	= <cyberware:component:6>;
var partSynthNerves	= <cyberware:component:7>;
var partStorageCell	= <cyberware:component:8>;
var partMicroECells	= <cyberware:component:9>;

//block variables
var robosurgeon		= <cyberware:surgery>;
var surgeryroom		= <cyberware:surgery_chamber>;
var cybertable		= <cyberware:engineering_table>;
var cybercharger	= <cyberware:charger>;

//cross-pollinate workbench oredicts
workbench.add(<natura:nether_workbenches:*>,<natura:overworld_workbenches>);
woodCrafter.add(<tconstruct:tooltables:0>);

//disable cyberware scanner
JEI.removeAndHide(<cyberware:scanner>);

//add cybersurgeon recipe
recipes.addShaped(robosurgeon,
	[[plateSteel,txCoil,plateSteel],
	[storageCrate,rocketSaw,trashcan],
	[plateSteel,hopper,plateSteel]]);
	
//alter surgery chamber recipe
recipes.remove(surgeryroom);
recipes.addShaped(surgeryroom,
	[[plateSteel,tankSHP,plateSteel],
	[plateSteel,bondagestraps,plateSteel],
	[plateSteel,doorSteel,plateSteel]]);

//alter cyberware engineering table recipes
recipes.remove(cybertable);
recipes.addShaped(cybertable,
	[[servoMech,formCore,servoMech],
	[bitWrench,workbench,bit_chisel],
	[blockSteel,hardFluxCap,blockSteel]]);

//alter cyberware charger recipe
recipes.remove(cybercharger);
recipes.addShaped(cybercharger,
	[[insulatedGlass,heavyPPlate,insulatedGlass],
	[plateSteel,conductorCoil,plateSteel],
	[plateSteel,rfDuct,plateSteel]]);

//add part recipes
recipes.addShaped(partActuator * 4,
	[[null,null,redstoneDust],
	[plateTitAl,redstoneServo,null],
	[receptionCoil,plateTitAl,null]]);
	
recipes.addShaped(partBioreactor * 4,
	[[plateTitAl,enderPearl,plateTitAl],
	[ingotPlastic,blockBioreactor,ingotPlastic],
	[plateTitAl,txCoil,plateTitAl]]);
	
recipes.addShaped(partTitanMesh * 4,
	[[stickTitAl,null,stickTitAl],
	[null,stickTitAl,null],
	[stickTitAl,null,stickTitAl]]);
	
recipes.addShaped(partSSCircuit * 4,
	[[ingotPlastic,procCalculation,ingotPlastic],
	[procLogic,redstoneTimer,procEngineering],
	[ingotPlastic,redstoneDust,ingotPlastic]]);
	
recipes.addShaped(partChromePlate * 2,
	[[ingotCobalt,ingotTitAl],
	[ingotTitAl,ingotCobalt]]);
	
recipes.addShaped(partFiberOptics * 4,
	[[ingotPlastic,ingotPlastic,ingotPlastic],
	[glassPane,glassPane,glassPane],
	[ingotPlastic,ingotPlastic,ingotPlastic]]);

recipes.addShaped(partFullereneMS * 4,
	[[ingotPlastic,dustCarbon,ingotPlastic],
	[dustCarbon,ingotHCarbon,dustCarbon],
	[ingotPlastic,dustCarbon,ingotPlastic]]);
	
recipes.addShaped(partSynthNerves * 4,
	[[ingotPlastic,brain,flesh],
	[ingotPlastic,flesh,ingotPlastic],
	[flesh,ingotPlastic,goldNugs]]);

recipes.addShaped(partStorageCell * 2,
	[[ingotPlastic,ae2Storage1K,ingotPlastic],
	[plateTitAl,drawerTrim,plateTitAl],
	[ingotPlastic,moonUnit,ingotPlastic]]);
	
recipes.addShaped(partMicroECells * 4,
	[[ingotPlastic,txCoil,ingotPlastic],
	[null,enderPearl,chargedQuartz],
	[ingotPlastic,fluxCapacitor,ingotPlastic]]);