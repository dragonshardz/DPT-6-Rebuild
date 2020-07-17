import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.nuclearcraft.Manufactory;
//vars
var charcoal		= <ore:charcoal>;
var charDust		= <ore:dustCharcoal>;
var sand			= <ore:sand>;
var clay			= <minecraft:clay_ball>;
var silicon			= <ore:itemSilicon>;
var ingotSilicon	= <ore:ingotSilicon>;
var graphite		= <ore:ingotGraphite>;
var dustGraphite	= <ore:dustGraphite>;
var zedFlesh        = <minecraft:rotten_flesh>;
var dustRedstone    = <minecraft:redstone>;
var endPearl        = <minecraft:ender_pearl>;
var slag			= <immersiveengineering:material:7>;

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
var ingotTitanium	= <libvulpes:productingot:7>;
var ingotIridium	= <ore:ingotIridium>;
var ingotZircon		= <nuclearcraft:ingot:10>;
var ingotZirconium  = <ore:ingotZirconium>;
var coalCoke		= <ore:fuelCoke>;
var cokeDust		= <ore:dustCoke>;
var searedBrick		= <ore:blockSeared>;
var slimePurple		= <tconstruct:edible:2>;

# Dusts
var dustLead		= <ore:dustLead>;
var dustPlatinum	= <ore:dustPlatinum>;
var dustAluminum	= <ore:dustAluminum>;
var dustCopper		= <ore:dustCopper>;
var dustTin 		= <ore:dustTin>;
var dustSilver 		= <ore:dustSilver>;
var dustIron 		= <ore:dustIron>;
var dustIridium		= <ore:dustIridium>;
var dustsTitanium	= <libvulpes:productdust:7>;
var dustTitanium    = <ore:dustTitanium>;
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
var dustCarbMan		= <nuclearcraft:compound:10>;
var dustZircon		= <nuclearcraft:dust:10>;
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
mods.nuclearcraft.Manufactory.removeRecipeWithInput(ingotElecFlux);

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
mods.immersiveengineering.AlloySmelter.addRecipe(ingotKnightslime, ingotIron, slimePurple, 200);

///////////////////////////
// induction furn recipes//
///////////////////////////

//SPECIAL IND FURNACE VARS CAUSE IITEMSTACK YOU FUCKERS HAHAHAHA
var ingotIronIF	= <minecraft:iron_ingot>;
var dustIronIF	= <thermalfoundation:material>;
var dustIridiumIF	= <thermalfoundation:material:71>;
var ingotIridiumIF	= <thermalfoundation:material:135>;
var graphiteIF	= <nuclearcraft:dust:8>;
var dustTinIF	= <thermalfoundation:material:65>;
var dustAluminumIF	= <thermalfoundation:material:68>;
var ingotAluminumIF	= <thermalfoundation:material:132>;
var siliconIF	= <nuclearcraft:gem:6>;

//Oinkgots
mods.thermalexpansion.InductionSmelter.addRecipe(ingotPigIron, ingotIronIF, clay, 3200);
mods.thermalexpansion.InductionSmelter.addRecipe(ingotPigIron, dustIronIF, clay, 2400);

//titanium-iridium
mods.thermalexpansion.InductionSmelter.addRecipe(ingotTitaniumIridium*2, ingotTitanium, dustIridiumIF, 1600);
mods.thermalexpansion.InductionSmelter.addRecipe(ingotTitaniumIridium*2, dustsTitanium, ingotIridiumIF, 1600);
mods.thermalexpansion.InductionSmelter.addRecipe(ingotTitaniumIridium*2, dustsTitanium, dustIridiumIF, 1200);

//titanium aluminide
mods.thermalexpansion.InductionSmelter.addRecipe(ingotTitaniumIridium*2, ingotTitanium*3, dustAluminumIF*7, 1600);
mods.thermalexpansion.InductionSmelter.addRecipe(ingotTitaniumIridium*2, dustsTitanium*3, ingotAluminumIF*7, 1600);
mods.thermalexpansion.InductionSmelter.addRecipe(ingotTitaniumIridium*2, dustsTitanium*3, dustAluminumIF*7, 1200);
//silicarbide
mods.thermalexpansion.InductionSmelter.addRecipe(ingotSiliconCarbide*2, siliconIF, graphiteIF, 1600);

//Knightslime
mods.thermalexpansion.InductionSmelter.addRecipe(ingotKnightslime*2, ingotIronIF, slimePurple, 1600);

//Zircaloy
mods.thermalexpansion.InductionSmelter.addRecipe(ingotZircaloy*8, ingotZircon*7, dustTinIF, 3200);
mods.thermalexpansion.InductionSmelter.addRecipe(ingotZircaloy*8, dustZircon*7, dustTinIF, 3200);

//AYCH ESS ELL AY
mods.thermalexpansion.InductionSmelter.addRecipe(ingotHSLA*16, ingotIronIF*15, dustCarbMan, 4800);
mods.thermalexpansion.InductionSmelter.addRecipe(ingotHSLA*16, dustIronIF*15, dustCarbMan, 4800);

///////////////////////////
//  ARC COCKACE RECIPES //
///////////////////////////


//steel
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSteel*2, ingotIron, slag, 100, 1048, [coalCoke], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSteel*2, ingotIron, slag, 100, 1048, [cokeDust], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSteel*2, ingotIron, slag, 100, 1048, [charcoal], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSteel*2, ingotIron, slag, 100, 1048, [charDust], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSteel*2, dustIron, slag, 100, 1048, [coalCoke], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSteel*2, dustIron, slag, 100, 1048, [cokeDust], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSteel*2, dustIron, slag, 100, 1048, [charcoal], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSteel*2, dustIron, slag, 100, 1048, [charDust], "Alloying");

//constantan
mods.immersiveengineering.ArcFurnace.addRecipe(ingotConstantan*2, ingotCopper, slag, 100, 1048, [ingotNickel], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotConstantan*2, ingotCopper, slag, 100, 1048, [dustNickel], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotConstantan*2, dustCopper, slag, 100, 1048, [ingotNickel], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotConstantan*2, dustCopper, slag, 100, 1048, [dustNickel], "Alloying");

//electrum
mods.immersiveengineering.ArcFurnace.addRecipe(ingotElectrum*4, ingotGold, slag, 100,1048, [ingotSilver], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotElectrum*4, ingotGold, slag, 100, 1048, [dustSilver], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotElectrum*4, dustGold, slag, 100, 1048, [ingotSilver], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotElectrum*4, dustGold, slag, 100, 1048, [dustSilver], "Alloying");

//signalum
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSignalum, dustSilver, slag, 100, 4048, [dustCopper*3,dustRedstone], "Alloying");

//lumium
mods.immersiveengineering.ArcFurnace.addRecipe(ingotLumium, dustSilver, slag, 100, 4048, [dustTin*3, dustGlowstone], "Alloying");

//enderium
mods.immersiveengineering.ArcFurnace.addRecipe(ingotEnderium, dustSilver, slag, 100, 4048, [dustTin*2, endPearl, dustPlatinum], "Alloying");

//electrum fluxed
mods.immersiveengineering.ArcFurnace.addRecipe(ingotElecFlux, dustSilver, slag, 100, 4048, [dustGold, dustRedstone], "Alloying");

//bronze
mods.immersiveengineering.ArcFurnace.addRecipe(ingotBronze*8, ingotCopper*3, slag, 100, 1048, [ingotTin], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotBronze*8, ingotCopper*3, slag, 100, 1048, [dustTin], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotBronze*8, dustCopper*3, slag, 100, 1048, [ingotTin], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotBronze*8, dustCopper*3, slag, 100, 1048, [dustTin], "Alloying");

//invar
mods.immersiveengineering.ArcFurnace.addRecipe(ingotInvar*5, ingotIron*2, slag, 100, 1048, [ingotNickel], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotInvar*5, ingotIron*2, slag, 100, 1048, [dustNickel], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotInvar*5, dustIron*2, slag, 100, 1048, [ingotNickel], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotInvar*5, dustIron*2, slag, 100, 1048, [dustNickel], "Alloying");

//pig iron
mods.immersiveengineering.ArcFurnace.addRecipe(ingotPigIron*4, ingotIron*2, slag, 100, 1048,[clay,zedFlesh*2], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotPigIron*4, dustIron*2, slag, 100, 1048,[clay,zedFlesh*2], "Alloying");

//aluminum brass
mods.immersiveengineering.ArcFurnace.addRecipe(ingotAluBrass*4, ingotAluminum*3, slag, 100, 1048, [ingotCopper], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotAluBrass*4, ingotAluminum*3, slag, 100, 1048, [dustCopper], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotAluBrass*4, dustAluminum*3, slag, 100, 1048, [ingotCopper], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotAluBrass*4, dustAluminum*3, slag, 100, 1048, [dustCopper], "Alloying");

//silicon carbide
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSiliconCarbide*4, ingotSilicon, slag, 100, 1048, [graphite], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSiliconCarbide*4, ingotSilicon, slag, 100, 1048, [dustGraphite], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSiliconCarbide*4, silicon, slag, 100, 1048, [graphite], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSiliconCarbide*4, silicon, slag, 100, 1048, [dustGraphite], "Alloying");

//manyullyn
mods.immersiveengineering.ArcFurnace.addRecipe(ingotManyullyn*4, ingotCobalt, slag, 200, 2096, [ingotArdite], "Alloying");

//knightslime
mods.immersiveengineering.ArcFurnace.addRecipe(ingotKnightslime*8, ingotIron*4, slag, 100, 1048,[searedBrick*2, slimePurple], "Alloying");

//titanium aluminide
mods.immersiveengineering.ArcFurnace.addRecipe(ingotTitaniumAluminide*6, ingotIron*7, slag, 200, 2096, [dustAluminum*3], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotTitaniumAluminide*6, dustIron*7, slag, 200, 2096, [ingotAluminum*3], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotTitaniumAluminide*6, ingotIron*7, slag, 200, 2096, [ingotAluminum*3], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotTitaniumAluminide*6, dustIron*7, slag, 200, 2096, [dustAluminum*3], "Alloying");

//titanium-iridium
mods.immersiveengineering.ArcFurnace.addRecipe(ingotTitaniumIridium*4, ingotTitanium, slag, 200, 2096, [ingotIridium], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotTitaniumIridium*4, dustTitanium, slag, 200, 2096, [ingotIridium], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotTitaniumIridium*4, ingotTitanium, slag, 200, 2096, [dustIridium], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotTitaniumIridium*4, dustTitanium, slag, 200, 2096, [dustIridium], "Alloying");

//zirconium alloy
mods.immersiveengineering.ArcFurnace.addRecipe(ingotZircaloy*16, ingotZirconium*7, slag, 200, 2096, [dustTin], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotZircaloy*16, ingotZirconium*7, slag, 200, 2096, [ingotTin], "Alloying");

//HSLA steel
mods.immersiveengineering.ArcFurnace.addRecipe(ingotHSLA, dustIron, slag, 200, 2096, [dustCarbMan], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotHSLA, ingotIron, slag, 200, 2096, [dustCarbMan], "Alloying");
