import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Insolator;
import mods.tconstruct.Alloy;
import mods.thermalexpansion.Compactor;

# Ingots
var ingotIron 		= <minecraft:iron_ingot>;
var ingotInvar		= <ore:ingotInvar>;
var ingotGraphite 	= <immersiveengineering:material:19>;
var steelDict		= <ore:ingotSteel>;
var ingotTin		= <ore:ingotTin>;

# Gears
var gearSteel		= <ore:gearSteel>;
var gearSilver		= <ore:gearSilver>;
var gearInvar		= <ore:gearInvar>;
var gearCopper		= <ore:gearCopper>;
var gearTin			= <ore:gearTin>;
var gearLead		= <ore:gearLead>;

# Dusts
var dustIronIE		= <immersiveengineering:metal:18>;
var dustIronTF		= <thermalfoundation:material>;
var dustCoalTF 		= <thermalfoundation:material:768>;
var dustCharcoalTF 	= <thermalfoundation:material:769>;
var HOPdust			= <immersiveengineering:material:18>;
var cokedust		= <immersiveengineering:material:17>;

# TE Mats
var frame			= <thermalexpansion:frame:64>;
var servo			= <thermalfoundation:material:512>;
var fluiduct		= <thermaldynamics:duct_16:1>;
var mechFrame		= <thermalexpansion:frame:0>;
var cellFrame		= <thermalexpansion:frame:128>;
var strongbox		= <thermalexpansion:strongbox>;
var cache			= <thermalexpansion:cache>;

# Misc
var glassHardened	= <ore:blockGlassHardened>;
var cokeTF			= <thermalfoundation:material:802>;
var redstone 		= <minecraft:redstone>;
var blockGlass 		= <ore:blockGlass>;
var plateSteel		= <ore:plateSteel>;
var plateCopper		= <ore:plateCopper>;
var cokeBrick 		= <immersiveengineering:stone_decoration>;
var pyroConv		= <thermalexpansion:augment:258>;
var mvCap			= <immersiveengineering:metal_device0:1>;
var crate			= <immersiveengineering:wooden_device0:0>;
var crateRef		= <immersiveengineering:wooden_device0:5>;

//replace strongbox recipe
recipes.remove(strongbox);
recipes.addShaped("Strongbox", strongbox,
	[[ingotIron, ingotTin, ingotIron],
	[ingotTin, crate, ingotTin],
	[ingotIron, ingotTin, ingotIron]]);
	
//replace cache recipe
recipes.remove(cache);
recipes.addShaped("Cache", cache,
	[[ingotIron, ingotTin, ingotIron],
	[ingotTin, crateRef, ingotTin],
	[ingotIron, servo, ingotIron]]);

// Replace recipe kit recipes

recipes.remove(<thermalfoundation:upgrade>);
recipes.addShaped("HardenedUpgrade", <thermalfoundation:upgrade>,
	[[ingotIron, ingotInvar, ingotIron],
	[ingotInvar, gearSteel, ingotInvar],
	[redstone, ingotInvar, redstone]]);

recipes.remove(<thermalfoundation:upgrade:1>);
recipes.addShaped("ReinforcedUpgrade", <thermalfoundation:upgrade:1>,
	[[plateSteel, plateSteel, plateSteel],
	[ingotGraphite, gearSilver, ingotGraphite],
	[glassHardened, <ore:plateGold>, glassHardened]]);

//replace Device and Machine frames

recipes.remove(frame);
recipes.addShaped("Device Frame", frame,
	[[steelDict, ingotIron, steelDict],
	[blockGlass, gearCopper, blockGlass],
	[steelDict, ingotIron, steelDict]]);
recipes.remove(mechFrame);
recipes.addShaped("Machine Frame", mechFrame,
	[[steelDict, ingotIron, steelDict],
	[blockGlass, gearTin, blockGlass],
	[steelDict, ingotIron, steelDict]]);
recipes.remove(cellFrame);
recipes.addShaped("Energy Cell Frame", cellFrame,
	[[steelDict, blockGlass, steelDict],
	[blockGlass, gearLead, blockGlass],
	[steelDict, mvCap, steelDict]]);

//Pyrolytic Conversion augment

recipes.remove(pyroConv);
recipes.addShaped("Pyrolytic Conversion", pyroConv,
	[[ingotIron, gearInvar, ingotIron],
	[plateCopper, servo, plateCopper],
	[ingotIron, cokeBrick, ingotIron]]);
	
//restore Fluidic Fabber
recipes.addShaped("Fluidic Fabricator", <thermalexpansion:augment:433>,
	[[ingotIron, <minecraft:bucket>, ingotIron],
	[plateCopper, servo, plateCopper],
	[ingotIron, blockGlass, ingotIron]]);

// remove smelter alloying for enderium and signalum
Alloy.removeRecipe(<liquid:enderium>);
Alloy.removeRecipe(<liquid:signalum>);


// Remove gear recipes
recipes.remove(<thermalfoundation:material:24>);
recipes.remove(<thermalfoundation:material:257>);
recipes.remove(<thermalfoundation:material:25>);
recipes.remove(<thermalfoundation:material:256>);
recipes.remove(<thermalfoundation:material:257>);
recipes.remove(<thermalfoundation:material:258>);
recipes.remove(<thermalfoundation:material:259>);
recipes.remove(<thermalfoundation:material:260>);
recipes.remove(<thermalfoundation:material:261>);
recipes.remove(<thermalfoundation:material:262>);
recipes.remove(<thermalfoundation:material:263>);
recipes.remove(<thermalfoundation:material:264>);
recipes.remove(<thermalfoundation:material:288>);
recipes.remove(<thermalfoundation:material:289>);
recipes.remove(<thermalfoundation:material:290>);
recipes.remove(<thermalfoundation:material:291>);
recipes.remove(<thermalfoundation:material:292>);
recipes.remove(<thermalfoundation:material:293>);
recipes.remove(<thermalfoundation:material:294>);
recipes.remove(<thermalfoundation:material:295>);
recipes.remove(<redstonearsenal:material:96>);

//remove thaumcraft plate crafting
recipes.remove(<thaumcraft:plate:*>);
Compactor.addPressRecipe(HOPdust, cokedust*8, 1500);

//add bluebells to phytogenic insolator
Insolator.addRecipe(<natura:bluebells_flower> * 3, <natura:bluebells_flower>, <thermalfoundation:fertilizer:0>, 4800);
Insolator.addRecipe(<natura:bluebells_flower> * 6, <natura:bluebells_flower>, <thermalfoundation:fertilizer:1>, 7200);
Insolator.addRecipe(<natura:bluebells_flower> * 9, <natura:bluebells_flower>, <thermalfoundation:fertilizer:2>, 9600);

//add recipes for AR alloys
InductionSmelter.addRecipe(<advancedrocketry:productingot:0> * 3, <libvulpes:productingot:7> * 3, <immersiveengineering:metal:1> * 7, 2000);
InductionSmelter.addRecipe(<advancedrocketry:productingot:1> * 2, <libvulpes:productingot:7>, <thermalfoundation:material:135>, 2000);