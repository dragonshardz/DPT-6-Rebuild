
var brick_block 	= <minecraft:brick_block>;
var clay 			= <minecraft:clay_ball>;
var brick 			= <ore:ingotBrick>;
var brickNether 	= <ore:ingotBrickNether>;
var netherrack		= <minecraft:netherrack>;
var oreSandstone	= <ore:sandstone>;
var sandstone		= <minecraft:sandstone>;
var red_sandstone	= <minecraft:red_sandstone>;
var blazePowder		= <ore:powderBlaze>;
var silicon			= <ore:itemSilicon>;
var redstone 		= <minecraft:redstone>;
var enderPearl		= <minecraft:ender_pearl>;
var obsidian		= <minecraft:obsidian>;
var gunpowder		= <minecraft:gunpowder>;
var charcoal		= <minecraft:coal:1>;
var cokeBrick 		= <immersiveengineering:stone_decoration>;
var blastBrick 		= <immersiveengineering:stone_decoration:1>;
var clathrateOil	= <ore:clathrateOil>;
var water			= <minecraft:water_bucket>;
var sand			= <ore:sand>;
var gravel			= <ore:gravel>;
var slag			= <ore:itemSlag>;
var blockAsphalt	= <immersivepetroleum:stone_decoration>;
var dustSulfur		= <immersiveengineering:material:25>;

//////////////////////
//  Basic  recipes  //
//////////////////////

recipes.remove(cokeBrick);
recipes.addShaped("CokeBrick", cokeBrick * 3, 
	[[	clay, 	brick, 		clay],
	[	brick, 	oreSandstone, 	brick],
	[	clay, 	brick, 		clay]]);


recipes.remove(blastBrick);
recipes.addShaped("BlastBrick", blastBrick * 3, 
	[[	brickNether, 	brick, 		brickNether],
	[	brick, 			gunpowder,	brick],
	[	brickNether, 	brick, 		brickNether]]);

///////////////////////
//  Crusher recipes  //
///////////////////////

mods.immersiveengineering.Crusher.addRecipe(<minecraft:sand>, <ore:gravel>, 1000);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:wheat_seeds>, <minecraft:wheat>, 500);
mods.immersiveengineering.Crusher.addRecipe(dustSulfur * 2, netherrack, 1000);

///////////////////////////
//   Coke Oven recipes   //
///////////////////////////
mods.immersiveengineering.CokeOven.removeRecipe(charcoal);
mods.immersiveengineering.CokeOven.addRecipe(charcoal * 2, 200, <ore:logWood>, 2000);

//add corn ethanol
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 120, <harvestcraft:cornitem>, 2048);

//add IP bitumen to TE bitumen oredict
clathrateOil.add(<immersivepetroleum:material:0>);

//add IP bitumen as a fuel source
furnace.setFuel(<immersivepetroleum:material:0>, 1600);

//make TE bitumen usable in the recipe for asphalt
recipes.remove(blockAsphalt);
recipes.addShaped("", blockAsphalt * 8,
	[[sand, clathrateOil, sand],
	[gravel, water, gravel],
	[sand, clathrateOil, sand]]);
	
recipes.addShaped("Asphaltx12", blockAsphalt * 12,
	[[slag, clathrateOil, slag],
	[gravel, water, gravel],
	[slag, clathrateOil, slag]]);