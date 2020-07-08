import mods.tconstruct.Casting;
import mods.industrialforegoing.FluidDictionary;
import mods.jei.JEI;

var ingotIron	= <minecraft:iron_ingot>;
var redstone	= <minecraft:redstone>;
var rodSteel	= <immersiveengineering:material:2>;
var leather		= <minecraft:leather>;
var endereye	= <minecraft:ender_eye>;
var elytra		= <minecraft:elytra>;
var rabbitHide	= <minecraft:rabbit_hide>;
var rabbitFoot	= <minecraft:rabbit_foot>;
var railBed		= <ore:railBed>;
var plankOak	= <minecraft:planks:0>;
var stickWood	= <ore:stickWood>;
var thaumarmor	= <thaumcraft:thaumium_chest>;

//fix earthworks vertical planks
recipes.remove(<earthworks:block_planks_vert:*>);
recipes.addShaped("Oak Vertical Planks", <earthworks:block_planks_vert:0> * 2,
	[[<minecraft:planks:0>],
	[<minecraft:planks:0>]]);
recipes.addShaped("Spruce Vertical Planks", <earthworks:block_planks_vert:1> * 2,
	[[<minecraft:planks:1>],
	[<minecraft:planks:1>]]);
recipes.addShaped("Birch Vertical Planks", <earthworks:block_planks_vert:2> * 2,
	[[<minecraft:planks:2>],
	[<minecraft:planks:2>]]);
recipes.addShaped("Jungle Vertical Planks", <earthworks:block_planks_vert:3> * 2,
	[[<minecraft:planks:3>],
	[<minecraft:planks:3>]]);
recipes.addShaped("Acacia Vertical Planks", <earthworks:block_planks_vert:4> * 2,
	[[<minecraft:planks:4>],
	[<minecraft:planks:4>]]);
recipes.addShaped("Dark Oak Vertical Planks", <earthworks:block_planks_vert:5> *2,
	[[<minecraft:planks:5>],
	[<minecraft:planks:5>]]);

//fix earthworks shakes
recipes.remove(<earthworks:block_wood_shingle:*>);
recipes.addShapeless("Oak Wood Shingle", <earthworks:block_wood_shingle:0> *8,
	[<earthworks:block_timber>]);
recipes.addShapeless("Spruce Wood Shingle", <earthworks:block_wood_shingle:1> *8,
	[<earthworks:block_timber_spruce>]);
recipes.addShapeless("Birch Wood Shingle", <earthworks:block_wood_shingle:2> *8,
	[<earthworks:block_timber_birch>]);
recipes.addShapeless("Jungle Wood Shingle", <earthworks:block_wood_shingle:3> *8,
	[<earthworks:block_timber_jungle>]);
recipes.addShapeless("Acacia Wood Shingle", <earthworks:block_wood_shingle:4> *8,
	[<earthworks:block_timber_acacia>]);
recipes.addShapeless("Dark Oak Wood Shingle", <earthworks:block_wood_shingle:5> *8,
	[<earthworks:block_timber_dark_oak>]);
	
//combine rabbit feet into rabbit hides
recipes.addShaped("Rabbit Hide", rabbitHide,
	[[rabbitFoot, rabbitFoot],
	[rabbitFoot, rabbitFoot]]);

//craftable elytra
recipes.addShaped("Elytra", elytra,
	[[null, endereye, null],
	[rodSteel, thaumarmor, rodSteel],
	[leather, null, leather]]);

// gear cast from stone gear
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:23>, <liquid:gold>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:23>, <liquid:alubrass>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:23>, <liquid:brass>, 144, true);

furnace.addRecipe(<minecraft:leather>, <minecraft:rotten_flesh> * 4);
//recipes.addShapeless(<minecraft:chest>, [<quark:custom_chest:*>]);

//hopping bonsai
recipes.remove(<bonsaitrees:bonsaipot:1>);

var gearElectrum = <thermalfoundation:material:289>;
recipes.addShaped("TechingBonsai", <bonsaitrees:bonsaipot:1>,
	[[null, null, null],
	[null, <bonsaitrees:bonsaipot>, null],
	[gearElectrum, <minecraft:hopper>, gearElectrum]]);


//remove petrified fuel generator
recipes.remove(<industrialforegoing:petrified_fuel_generator>);

// fluid crafting augment
recipes.remove(<thermalexpansion:augment:433>);

var stickIron 	= <ore:stickIron>;
// alter malisis ladder recipe
recipes.remove(<malisisdoors:rustyladder>);
recipes.addShaped("rustyLadder", <malisisdoors:rustyladder> * 12,
	[[stickIron, null, stickIron],
	[ingotIron, ingotIron, ingotIron],
	[stickIron, null, stickIron]]);


// tallow fixes
furnace.remove(<rustic:tallow>);
recipes.remove(<rustic:candle>);
recipes.addShaped("candle", <rustic:candle>,
	[[null, <minecraft:string>, null],
	[null, <ore:tallow>, null],
	[null, ingotIron, null]]);

// exchangers
val exchangerCore = <exchangers:te_exchanger_core_tier1>;
recipes.remove(exchangerCore);
recipes.addShaped("exCoreT1", exchangerCore,
	[[<ore:gearCopper>, <ore:ingotLead>, <ore:gearCopper>],
	[<ore:ingotLead>, <minecraft:ender_pearl>, <ore:ingotLead>],
	[<ore:gearCopper>, <ore:ingotLead>, <ore:gearCopper>]]);
	
//Amber production because holy shit this mineral
mods.thermalexpansion.Refinery.addRecipe(<liquid:water> * 100, <thaumcraft:amber>, <liquid:sap> * 500, 9000);

//hide the fucking furry vore book, holy shit
JEI.removeAndHide(<hammercore:manual>);

//fix moarsigns
recipes.remove(<moarsigns:moar_sign>.withTag({SignTexture: "oak_sign"}));
recipes.addShaped(<moarsigns:moar_sign>.withTag({SignTexture: "oak_sign"}),
	[[plankOak,plankOak,plankOak],
	[plankOak,plankOak,plankOak],
	[null,stickWood,null]]);

//oredick the honeys
FluidDictionary.add("honey", "animania_honey", 1);
FluidDictionary.add("animania_honey", "honey", 1);