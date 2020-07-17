import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

//vars
var charcoal		= <ore:charcoal>;
var charDust		= <ore:dustCharcoal>;
var sand			= <ore:sand>;
var clay			= <minecraft:clay_ball>;
var silicon			= <ore:itemSilicon>;
var ingotSilicon	= <ore:ingotSilicon>;
var graphite		= <ore:ingotGraphite>;
var dustGraphite	= <ore:dustGraphite>;
# Input ingots
var ingotIron 		= <ore:ingotIron>;
var ingotGold		= <ore:ingotGold>;
var ingotNickel		= <ore:ingotNickel>;
var ingotCopper 	= <ore:ingotCopper>;
var ingotTin 		= <ore:ingotTin>;
var ingotLead 		= <ore:ingotLead>;
var ingotAluminum	= <ore:ingotAluminum>;
var ingotSilver 	= <ore:ingotSilver>;
var ingotPlatinum 	= <ore:ingotPlatinum>;
var ingotCobalt		= <ore:ingotCobalt>;
var ingotArdite		= <ore:ingotArdite>;
var coalCoke		= <ore:fuelCoke>;
var cokeDust		= <ore:dustCoke>;
var searedBrick		= <ore:blockSeared>;

# Dusts
var dustLead		= <ore:dustLead>;
var dustPlatinum	= <ore:dustPlatinum>;
var dustAluminum	= <ore:dustAluminum>;
var dustCopper		= <ore:dustCopper>;
var dustTin 		= <ore:dustTin>;
var dustSilver 		= <ore:dustSilver>;
var dustIron 		= <ore:dustIron>;
var dustGlowstone	= <ore:dustGlowstone>;
var dustCharcoal	= <ore:dustCharcoal>;
var dustNickel		= <ore:dustNickel>;
var dustGold		= <ore:dustGold>;
var dustLumium		= <ore:dustLumium>;
var dustSignalum	= <ore:dustSignalum>;
var dustEnderium	= <ore:dustEnderium>;
var dustElecFlux	= <ore:dustElectrumFlux>;
var dustBronze		= <ore:dustBronze>;
var dustInvar		= <ore:dustInvar>;
var dustElecFluxForRemoval	= <redstonearsenal:material>;

// outputs
var ingotSteel 		= <immersiveengineering:metal:8>;
var ingotSteelThermex		= <thermalfoundation:material:160>;
var ingotSteelAdvCocketry	= <libvulpes:productingot:6>;
var ingotSteelNukez	= <nuclearcraft:alloy:5>;
var ingotLumium		= <thermalfoundation:material:166>;
var ingotEnderium	= <thermalfoundation:material:167>;
var ingotSignalum	= <thermalfoundation:material:165>;
var ingotConstantan = <immersiveengineering:metal:6>;
var ingotElectrum	= <immersiveengineering:metal:7>;
var ingotElectrumThermex	= <thermalfoundation:material:161>;
var ingotElecFlux	= <redstonearsenal:material:32>;
var ingotBronze		= <thermalfoundation:material:163>;
var ingotInvar		= <thermalfoundation:material:162>;
var ingotPigIron	= <tconstruct:ingots:4>;
var ingotAluBrass	= <tconstruct:ingots:5>;
var ingotManyullyn	= <tconstruct:ingots:2>;
var ingotKnightslime	= <tconstruct:ingots:3>;
var ingotSiliconCarbide	= <nuclearcraft:alloy:13>;
var ingotHSLA	= <nuclearcraft:alloy:15>;
var ingotZircaloy	= <nuclearcraft:alloy:12>;
var ingotTitaniumAluminide	= <advancedrocketry:productingot>;
var ingotTitaniumIridium	= <advancedrocketry:productingot:1>;


///////////////////////////
//        Removals       //
///////////////////////////
val removeAFArray = [
	ingotElectrumThermex,
	ingotLumium,
	ingotSteel,
	ingotEnderium,
	ingotSignalum,
	ingotConstantan,
	ingotElecFlux,
	ingotBronze,
	ingotInvar,
	ingotSteelThermex,
	ingotSteelNukez,
	ingotSteelAdvCocketry,
	ingotElectrum
] as IItemStack[];

//remove alloy furnace and Arc recipes
for item in removeAFArray{
    mods.immersiveengineering.AlloySmelter.removeRecipe(item);
	mods.immersiveengineering.ArcFurnace.removeRecipe(item);
}
val removeBlendCraftArray = [
	<immersiveengineering:metal:15>,
	<immersiveengineering:metal:16>,
	<immersiveengineering:metal:17>,
	<thermalfoundation:material:96>,
	<thermalfoundation:material:97>,
	<thermalfoundation:material:98>,
	<thermalfoundation:material:99>,
	<thermalfoundation:material:100>,
	<thermalfoundation:material:101>,
	<thermalfoundation:material:102>,
	<thermalfoundation:material:103>
] as IItemStack[];
for item in removeBlendCraftArray{
    recipes.remove(item);
}

//Kill Elecflux grinding as it needs to be crafted due to multi-inputs
mods.immersiveengineering.Crusher.removeRecipesForInput(dustElecFluxForRemoval);
mods.thermalexpansion.Pulverizer.removeRecipe(ingotElecFlux);
mods.nuclearcraft.manufactory.removeRecipeWithOutput(dustElecFluxForRemoval);

///////////////////////////
//  Alloy klin recipes   //
///////////////////////////

// It's A Steel
mods.immersiveengineering.AlloySmelter.addRecipe(ingotSteel, ingotIron*2, coalCoke, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotSteel, ingotIron*2, cokeDust, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotSteel, ingotIron*2, charcoal, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotSteel, ingotIron*2, charDust, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotSteel, dustIron*2, coalCoke, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotSteel, dustIron*2, cokeDust, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotSteel, dustIron*2, charcoal, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotSteel, dustIron*2, charDust, 200);

//Constantantly Spaiging
mods.immersiveengineering.AlloySmelter.addRecipe(ingotConstantan, ingotCopper, ingotNickel, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotConstantan, ingotCopper, dustNickel, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotConstantan, dustCopper, ingotNickel, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotConstantan, dustCopper, dustNickel, 200);

//Electrum
mods.immersiveengineering.AlloySmelter.addRecipe(ingotElectrum, ingotGold, ingotSilver, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotElectrum, ingotGold, dustSilver, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotElectrum, dustGold, ingotSilver, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotElectrum, dustGold, dustSilver, 200);

//Trump Ingots
mods.immersiveengineering.AlloySmelter.addRecipe(ingotSignalum, dustSignalum*2, sand, 200);
//Light Shit
mods.immersiveengineering.AlloySmelter.addRecipe(ingotLumium, dustLumium*2, sand, 200);
//Fuckin Spensive
mods.immersiveengineering.AlloySmelter.addRecipe(ingotEnderium, dustEnderium*2, sand, 200);
//FUKSED ELEKTRUM
mods.immersiveengineering.AlloySmelter.addRecipe(ingotElecFlux, dustElecFlux*2, sand, 200);
//BRONZE AGE
mods.immersiveengineering.AlloySmelter.addRecipe(ingotBronze*2, ingotCopper*3, ingotTin, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotBronze*2, ingotCopper*3, dustTin, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotBronze*2, dustCopper*3, ingotTin, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotBronze*2, dustCopper*3, dustTin, 200);
//Invariably
mods.immersiveengineering.AlloySmelter.addRecipe(ingotInvar*2, ingotIron*2, ingotNickel, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotInvar*2, ingotIron*2, dustNickel, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotInvar*2, dustIron*2, ingotNickel, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotInvar*2, dustIron*2, dustNickel, 200);
//Cop Iron
mods.immersiveengineering.AlloySmelter.addRecipe(ingotPigIron, ingotIron*2, clay, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotPigIron, dustIron*2, clay, 200);
//Aluminum Brass Class Tin
mods.immersiveengineering.AlloySmelter.addRecipe(ingotAluBrass*2, ingotAluminum*3, ingotCopper, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotAluBrass*2, ingotAluminum*3, dustCopper, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotAluBrass*2, dustAluminum*3, ingotCopper, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotAluBrass*2, dustAluminum*3, dustCopper, 200);
//Silicarbide
mods.immersiveengineering.AlloySmelter.addRecipe(ingotSiliconCarbide, ingotSilicon, graphite, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotSiliconCarbide, ingotSilicon, dustGraphite, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotSiliconCarbide, silicon, graphite, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(ingotSiliconCarbide, silicon, dustGraphite, 200);
//Man Oh Manyullyn
mods.immersiveengineering.AlloySmelter.addRecipe(ingotManyullyn, ingotCobalt, ingotArdite, 200);
//Knightslam
mods.immersiveengineering.AlloySmelter.addRecipe(ingotKnightslime, ingotIron*2, searedBrick*2, 200);

///////////////////////////
// induction furn recipes//
///////////////////////////

///////////////////////////
//  ARC COCKACE RECIPES //
///////////////////////////