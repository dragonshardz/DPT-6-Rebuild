var torch 		= <minecraft:torch>;
var stick 		= <ore:stickWood>;
var coal 		= <minecraft:coal:*>;
var creoBucket	= <liquid:creosote>;
var wool		= <ore:blockWool>;
var rosin		= <thermalfoundation:material:832>;
var tar 		= <thermalfoundation:material:833>;
var stickStone	= <tconstruct:stone_stick>;
var dicTorch	= <ore:torch>;
var nuTorch		= <realistictorches:torch_lit>;
var flintSteel	= <minecraft:flint_and_steel:*>;
var stoneTorch	= <tconstruct:stone_torch>;
var lantern		= <rustic:iron_lantern>;
var glowDust	= <ore:dustGlowstone>;
var ingotIron	= <minecraft:iron_ingot>;
var glowCrystal	= <realistictorches:glowstone_crystal>;
var glowPaste	= <realistictorches:glowstone_paste>;
var matchbox	= <realistictorches:matchbox:*>;
var flintBlaze	= <natura:flint_and_blaze:*>;
var firestarters= <ore:lighter>;
var deadTorch	= <realistictorches:torch_unlit>;
var dustSulfur	= <ore:dustSulfur>;

//remove vanilla torch, TIC torch, RT torches, BT torch, and rustic lantern
recipes.removeByRecipeName("minecraft:torch");
recipes.removeByRecipeName("realistictorches:torch");
recipes.remove(stoneTorch);
recipes.remove(nuTorch);
recipes.remove(deadTorch);
recipes.remove(lantern);

//add flint and matches to lighter oredict
firestarters.add(flintBlaze, flintSteel, matchbox);

//add RT lit torch to torch oredict
dicTorch.add(nuTorch);

//make stone torches craftable with creosote
//recipes.addShaped("Oil Stone Torch", stoneTorch * 12,
//	[[null, null, null],
//	[wool, creoBucket, null],
//	[stickStone, stickStone, stickStone]]);

//make rosin and tar usable to make stone torches
recipes.addShaped("Rosin Stone Torch", stoneTorch * 4,
	[[rosin],
	[stickStone]]);
	
recipes.addShaped("Tar Stone Torch", stoneTorch * 4,
	[[tar],
	[stickStone]]);
	
//vanilla torch recipe makes lit RT torch
recipes.addShaped("Lit Torch", nuTorch * 4,
	[[coal],
	[stick]]);
	
//directly craft vanilla torch
recipes.addShaped("Vanilla Torch", torch * 4,
	[[glowCrystal],
	[stick]]);

//TIC stone torch
recipes.addShaped("Stone Torch", stoneTorch * 4,
	[[coal, firestarters.transformDamage(1)],
	[stickStone]]);

//rustic lantern craftable with any torch
recipes.addShaped("Iron Lantern", lantern * 4,
	[[ingotIron],
	[dicTorch],
	[ingotIron]]);
	
//enable cooking an unlit torch to relight it
furnace.addRecipe(nuTorch, deadTorch);
mods.thermalexpansion.RedstoneFurnace.addRecipe(nuTorch, deadTorch, 2000);