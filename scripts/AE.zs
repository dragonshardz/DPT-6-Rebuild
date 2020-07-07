import mods.appliedenergistics2.Inscriber;
import mods.jei.JEI;
import mods.thermalexpansion.InductionSmelter;
import mods.immersiveengineering.Squeezer;
import mods.thermalexpansion.Compactor;

//aliases
val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val redstone = <minecraft:redstone>;
val nether_quartz = <minecraft:quartz>;
val diamond = <minecraft:diamond>;
var stone = <minecraft:stone>;
var steel = <ore:ingotSteel>;
var plastic = <industrialforegoing:plastic>;
var piston = <minecraft:piston>;
var hvconnector = <immersiveengineering:connector:4>;
var hvwire = <immersiveengineering:wirecoil:2>;

var siliconpress = <appliedenergistics2:material:19>;
var namepress = <appliedenergistics2:material:21>;
var calcpress = <appliedenergistics2:material:13>;
var engpress = <appliedenergistics2:material:14>;
var logpress = <appliedenergistics2:material:15>;

val sky_stone = <appliedenergistics2:smooth_sky_stone_block>;
val fluix_block = <appliedenergistics2:fluix_block>;
val enderium_block = <thermalfoundation:storage_alloy:7>;

val silicon = <ore:itemSilicon>;

val certus_quartz = <appliedenergistics2:material>;
val charged_quartz = <appliedenergistics2:material:1>;
val fluix_crystal = <appliedenergistics2:material:7>;
var pure_fc		= <appliedenergistics2:material:12>;

var circuit_quartz = <appliedenergistics2:material:16>;
var circuit_diamond = <appliedenergistics2:material:17>;
var circuit_gold = <appliedenergistics2:material:18>;

val proc_gold = <appliedenergistics2:material:22>;
val proc_quartz = <appliedenergistics2:material:23>;
val proc_diamond = <appliedenergistics2:material:24>;

val controller = <appliedenergistics2:controller>;
val inscriber = <appliedenergistics2:inscriber>;

////////////////////////////
//  Alternate AE Recipes  //
////////////////////////////
//controller
recipes.remove(controller);
recipes.addShaped(controller,
	[[iron,pure_fc,iron],
	[pure_fc,proc_diamond,pure_fc],
	[iron,pure_fc,iron]]);

//circuit recipes
recipes.addShaped(proc_gold,
   [[redstone, silicon, redstone],
	[  iron,    gold,     iron 	],
	[redstone, silicon, redstone]]);

recipes.addShaped(proc_diamond,
   [[redstone, silicon, redstone],
	[  iron,   diamond,   iron 	],
	[redstone, silicon, redstone]]);

recipes.addShaped(proc_quartz,
   [[redstone, silicon, redstone],
	[ iron, charged_quartz, iron],
	[redstone, silicon, redstone]]);

//silicon press
recipes.addShaped("Silicon Press", siliconpress,
	[[steel, plastic, steel],
	[plastic, silicon, plastic],
	[steel, plastic, steel]]);
	
//name press
recipes.addShaped("Name Press", namepress,
	[[steel, plastic, steel],
	[plastic, <minecraft:name_tag>, plastic],
	[steel, plastic, steel]]);
	
//logic press
recipes.addShaped("Logic Press", logpress,
	[[steel, plastic, steel],
	[plastic, gold, plastic],
	[steel, plastic, steel]]);

//calculation press
recipes.addShaped("Calculation Press", calcpress,
	[[steel, plastic, steel],
	[plastic, charged_quartz, plastic],
	[steel, plastic, steel]]);

//engineering press
recipes.addShaped("Engineering Press", engpress,
	[[steel, plastic, steel],
	[plastic, diamond, plastic],
	[steel, plastic, steel]]);

//inscriber
recipes.remove(inscriber);
recipes.addShaped("Inscriber", inscriber,
	[[hvconnector, piston, steel],
	[hvwire, null, steel],
	[plastic, steel, plastic]]);

//fluix crystal
recipes.addShapeless("Fluix Crystal", fluix_crystal * 2, [charged_quartz, nether_quartz, redstone]);

//remove unused inscriber presses
Inscriber.removeRecipe(namepress);
Inscriber.removeRecipe(logpress);
Inscriber.removeRecipe(calcpress);
Inscriber.removeRecipe(engpress);
Inscriber.removeRecipe(siliconpress);

//hide deprecated ExtraCells and AdvRocketry items
JEI.hide(<advancedrocketry:datapipe>);
JEI.hide(<advancedrocketry:energypipe>);
JEI.hide(<advancedrocketry:liquidpipe>);
JEI.hide(<extracells:part.base:0>);
JEI.hide(<extracells:part.base:1>);
JEI.hide(<extracells:part.base:2>);
JEI.hide(<extracells:part.base:3>);
JEI.hide(<extracells:part.base:4>);
JEI.hide(<extracells:part.base:5>);
JEI.hide(<extracells:part.base:6>);
JEI.hide(<extracells:part.base:9>);
JEI.hide(<extracells:storage.fluid:*>);
JEI.hide(<extracells:storage.component:4>);
JEI.hide(<extracells:storage.component:5>);
JEI.hide(<extracells:storage.component:6>);
JEI.hide(<extracells:storage.component:7>);
JEI.hide(<extracells:ecbaseblock>);

//hide the pages and pages of facades in JEI goddamn
JEI.hide(<appliedenergistics2:facade:*>);
JEI.addDescription(<appliedenergistics2:part:120>, "Place 4 of these in a + pattern around most blocks to make a facade to hide cabling behind.");

//also hide the filled patterns from EC2
for c in <extracells:pattern.fluid>.definition.subItems {
    if (c.hasTag) {
        JEI.hide(c);
    }
}

//craft smart fiber into dense smart fiber
var smartfiber = <appliedenergistics2:part:56>;
recipes.addShaped(<appliedenergistics2:part:76>,
	[[smartfiber,smartfiber],
	[smartfiber,smartfiber]]);
	
//compress/squeeze nether quartz into certus quartz
var blockQuartz = <minecraft:quartz_block>;
var itemCertus	= <appliedenergistics2:material:0>;
Squeezer.addRecipe(itemCertus * 2, null, blockQuartz, 2048);
Compactor.addMintRecipe(itemCertus, blockQuartz, 2000);