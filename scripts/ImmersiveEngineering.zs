
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
var stoneMarble		= <ore:stoneMarble>;
var clathrateOil	= <ore:clathrateOil>;

# Ingots
var ingotIron 		= <ore:ingotIron>;
var ingotCopper 	= <ore:ingotCopper>;
var ingotTin 		= <ore:ingotTin>;
var ingotLead 		= <ore:ingotLead>;
var ingotSilver 	= <ore:ingotSilver>;
var ingotPlatinum 	= <ore:ingotPlatinum>;
var ingotSteel 		= <immersiveengineering:metal:8>;
var ingotLumium		= <thermalfoundation:material:166>;
var ingotEnderium	= <thermalfoundation:material:167>;
var ingotSignalum	= <thermalfoundation:material:165>;


# Dusts
var dustLead		= <ore:dustLead>;
var dustPlatinum	= <ore:dustPlatinum>;
var dustCopper		= <ore:dustCopper>;
var dustTin 		= <ore:dustTin>;
var dustSilver 		= <ore:dustSilver>;
var dustCoal 		= <ore:dustCoal>;
var dustIron 		= <ore:dustIron>;
var dustGlowstone	= <minecraft:glowstone_dust>;
var dustSulfur		= <immersiveengineering:material:25>;
var dustSaltpeter	= <immersiveengineering:material:24>;
var dustCharcoal	= <thermalfoundation:material:769>;
var dustSteel		= <thermalfoundation:material:96>;

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
	
recipes.addShaped("Steel Dust", dustSteel * 2,
	[[	dustCharcoal,	dustIron,	dustCharcoal],
	[	dustIron,		stoneMarble,	dustIron],
	[	dustCharcoal, 	dustIron, 	dustCharcoal]]);

///////////////////////
//  Crusher recipes  //
///////////////////////

mods.immersiveengineering.Crusher.addRecipe(<minecraft:sand>, <ore:gravel>, 1000);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:wheat_seeds>, <minecraft:wheat>, 500);
mods.immersiveengineering.Crusher.addRecipe(dustSulfur * 2, netherrack, 1000);

///////////////////////////
//  Arc furnace recipes  //
///////////////////////////

mods.immersiveengineering.ArcFurnace.addRecipe(ingotEnderium * 4, dustPlatinum, null, 750, 1024, [dustLead * 3, enderPearl * 4], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotEnderium * 4, ingotPlatinum, null, 750, 1024, [ingotLead * 3, enderPearl * 4], "Alloying");

mods.immersiveengineering.ArcFurnace.addRecipe(ingotSignalum * 4, dustSilver, null, 500, 1024, [dustCopper * 3, redstone * 9], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSignalum * 4, ingotSilver, null, 500, 1024, [ingotCopper * 3, redstone * 9], "Alloying");

mods.immersiveengineering.ArcFurnace.addRecipe(ingotLumium * 4, dustSilver, null, 500, 1024, [dustTin * 3, dustGlowstone * 6], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotLumium * 4, ingotSilver, null, 500, 1024, [ingotTin * 3, dustGlowstone * 6], "Alloying");

///////////////////////////
//   Coke Oven recipes   //
///////////////////////////
mods.immersiveengineering.CokeOven.removeRecipe(charcoal);
mods.immersiveengineering.CokeOven.addRecipe(charcoal * 2, 200, <ore:logWood>, 2000);

//add corn ethanol
mods.immersiveengineering.Fermenter.addRecipe(<ediblebugs:vegetableoil>, <liquid:ethanol> * 120, <harvestcraft:cornitem>, 2048);

//add IP bitumen to TE bitumen oredict
clathrateOil.add(<immersivepetroleum:material:0>);

//add IP bitumen as a fuel source
furnace.setFuel(<immersivepetroleum:material:0>, 1600);

//make TE bitumen usable in the recipe for asphalt
var water	= <minecraft:water_bucket>;
var sand	= <ore:sand>;
var gravel	= <ore:gravel>;
var slag	= <ore:itemSlag>;
var blockAsphalt	= <immersivepetroleum:stone_decoration>;

recipes.remove(blockAsphalt);
recipes.addShaped("", blockAsphalt * 8,
	[[sand, clathrateOil, sand],
	[gravel, water, gravel],
	[sand, clathrateOil, sand]]);
	
recipes.addShaped("Asphaltx12", blockAsphalt * 12,
	[[slag, clathrateOil, slag],
	[gravel, water, gravel],
	[slag, clathrateOil, slag]]);