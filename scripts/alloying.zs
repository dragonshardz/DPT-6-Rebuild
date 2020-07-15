import crafttweaker.item.IIngredient;
import mods.immersiveengineering.AlloySmelter;

//vars
var charcoal		= <ore:charcoal>;
var sand			= <ore:sand>;
# Input ingots
var ingotIron 		= <ore:ingotIron>;
var ingotGold		= <ore:ingotGold>;
var ingotNickel		= <ore:ingotNickel>;
var ingotCopper 	= <ore:ingotCopper>;
var ingotTin 		= <ore:ingotTin>;
var ingotLead 		= <ore:ingotLead>;
var ingotSilver 	= <ore:ingotSilver>;
var ingotPlatinum 	= <ore:ingotPlatinum>;

# Dusts
var dustLead		= <ore:dustLead>;
var dustPlatinum	= <ore:dustPlatinum>;
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

// outputs
var ingotSteel 		= <immersiveengineering:metal:8>;
var ingotLumium		= <thermalfoundation:material:166>;
var ingotEnderium	= <thermalfoundation:material:167>;
var ingotSignalum	= <thermalfoundation:material:165>;
var ingotConstantan = <immersiveengineering:metal:6>;
var ingotElectrum	= <immersiveengineering:metal:7>;
var ingotElecFlux	= <redstonearsenal:material:32>;
var ingotBronze		= <thermalfoundation:material:163>;
var ingotInvar		= <thermalfoundation:material:162>;

///////////////////////////
//        Removals       //
///////////////////////////
val removeAFArray = [
	<ore:ingotElectrum>
] as IIngredient[];

//remove alloy furnace recipes
for item in removeAFArray{
    mods.immersiveengineering.AlloySmelter.removeRecipe(item)
}

///////////////////////////
//  Alloy kiln recipes   //
///////////////////////////

///////////////////////////
// induction furn recipes//
///////////////////////////

///////////////////////////
//  Arc furnace recipes  //
///////////////////////////
//enderium
mods.immersiveengineering.ArcFurnace.addRecipe(ingotEnderium * 4, dustPlatinum, null, 750, 1024, [dustLead * 3, enderPearl * 4], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotEnderium * 4, ingotPlatinum, null, 750, 1024, [ingotLead * 3, enderPearl * 4], "Alloying");
//signalum
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSignalum * 4, dustSilver, null, 500, 1024, [dustCopper * 3, redstone * 9], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSignalum * 4, ingotSilver, null, 500, 1024, [ingotCopper * 3, redstone * 9], "Alloying");
//lumium
mods.immersiveengineering.ArcFurnace.addRecipe(ingotLumium * 4, dustSilver, null, 500, 1024, [dustTin * 3, dustGlowstone * 6], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotLumium * 4, ingotSilver, null, 500, 1024, [ingotTin * 3, dustGlowstone * 6], "Alloying");