//#Parts
var elytra			= <minecraft:elytra>;
var feather			= <ore:feather>;
var slabWood		= <ore:slabWood>;
var ingotIron		= <minecraft:iron_ingot>;
var gemDiamond		= <minecraft:diamond>;
var blockStone		= <ore:stone>;
var logWood			= <ore:logWood>;
var blockPiston		= <minecraft:piston>;
var itemMap			= <minecraft:map>;
var blockPumpkin	= <ore:cropPumpkin>;
var nuggetThaumium	= <ore:nuggetThaumium>;
var gemAquamarine	= <ore:gemAquamarine>;
var cobblestone		= <ore:cobblestone>;
var blockLapis		= <minecraft:lapis_block>;
var carpetPurple	= <minecraft:carpet:10>;
var mirrorGlass		= <thaumcraft:mirrored_glass>;
var ingotThaumium	= <ore:ingotThaumium>;
var arcanePedestal	= <thaumcraft:pedestal_arcane>;
var bioThaumicMind	= <thaumcraft:mind:1>;
var arcaneStone		= <thaumcraft:stone_arcane>;
var dustSalismundus	= <thaumcraft:salis_mundus>;
var glassLens		= <astralsorcery:itemcraftingcomponent:3>;
var enderPearl		= <minecraft:ender_pearl>;
var stickWood		= <ore:stickWood>;
var dyeYellow		= <ore:dyeYellow>;
var cobSlab			= <ore:slabCobblestone>;
var fuckinBook		= <minecraft:book>;
var livingwood		= <botania:livingwood>;
var livingTwig		= <botania:manaresource:3>;
var vines			= <minecraft:vine>;

//#Outputs
var starlightWand	= <astralsorcery:itemwand>.withTag({astralsorcery: {}});
var lookingGlass	= <astralsorcery:itemhandtelescope>;
var totemStaff		= <totemic:totemic_staff>;
var crystalEssence	= <ore:crystalEssence>;
var magicBench		= <thaumcraft:arcane_workbench>;

//add worldgen vis crystals to oredict
crystalEssence.add(<thaumcraft:crystal_aer>,<thaumcraft:crystal_ignis>,<thaumcraft:crystal_aqua>,<thaumcraft:crystal_terra>,<thaumcraft:crystal_ordo>,<thaumcraft:crystal_perditio>,<thaumcraft:crystal_vitium>);

//alter petal apothecary
recipes.remove(botania.altar);
recipes.addShaped("", botania.altar,
	[[cobSlab, thaumcraft:crystal_terra, cobSlab],
	[null, cobblestone, null],
	[cobblestone, cobblestone, cobblestone]]);
	
//alter totemic staff
//recipes.remove(totemStaff);
//recipes.addShaped("Totemic Staff", totemStaff,
//	[[null, crystalEssence, vines],
//	[null, livingTwig, null],
//	[livingTwig, null, feather]]);
	
//alter arcane workbench
recipes.remove(magicBench);
recipes.addShaped("Arcane Workbench", magicBench,
	[[nuggetThaumium, carpetPurple, nuggetThaumium],
	[crystalEssence, blockLapis, crystalEssence],
	[livingwood, arcanePedestal, livingwood]]);
	
//alter looking glass
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/handtelescope");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/handtelescope", lookingGlass, 20, 2,
	[null, arcaneStone, glassLens,
	arcaneStone, mirrorGlass, arcaneStone,
	glassLens, arcaneStone, null]);