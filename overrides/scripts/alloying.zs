import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.nuclearcraft.Manufactory;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Crusher;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.InductionSmelter;

//vars
#input items
var charcoal		= <ore:charcoal>;
var charDust		= <ore:dustCharcoal>;
var sand			= <ore:sand>;
var clay			= <minecraft:clay_ball>;
var silicon			= <ore:itemSilicon>;
var graphite		= <ore:ingotGraphite>;
var dustGraphite	= <ore:dustGraphite>;
var zedFlesh        = <minecraft:rotten_flesh>;
var dustRedstone    = <minecraft:redstone>;
var endPearl        = <minecraft:ender_pearl>;
var slag			= <immersiveengineering:material:7>;
var quicksilver		= <ore:quicksilver>;
var aquamarine		= <ore:gemAquamarine>;
var visPraycan		= <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]});
var visTerra		= <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]});
var amber			= <ore:gemAmber>;
var cotton			= <ore:cropCotton>;
var obsidian		= <ore:obsidian>;

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
var searedBrick		= <ore:ingotBrickSeared>;
var searedBlock		= <ore:blockSeared>;
var slimePurple		= <tconstruct:edible:2>;
var ingotMana		= <ore:ingotMithril>;
// alt: var ingotMana		= <thermalfoundation:material:136>;

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
var dustElecFluxForRemoval	= <redstonearsenal:material:32>;

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
var ingotHSLA		= <nuclearcraft:alloy:15>;
var ingotZircaloy	= <nuclearcraft:alloy:12>;
var ingotTitaniumAluminide	= <advancedrocketry:productingot>;
var ingotTitaniumIridium	= <advancedrocketry:productingot:1>;
var ingotMithminite	= <thaumadditions:mithminite_ingot>;
var ingotStarmetal	= <astralsorcery:itemcraftingcomponent:1>;
var ingotLivium		= <thaumic_arcana:ingot_livium>;
var ingotManasteel	= <botania:manaresource:0>;
var ingotThaumium	= <thaumcraft:ingot:0>;
var ingotMithrillium= <thaumadditions:mithrillium_ingot>;
var ingotTerrasteel	= <botania:manaresource:4>;
var ingotAdaminite	= <thaumadditions:adaminite_ingot>;
var ingotVoidmetal	= <thaumcraft:ingot:1>;	


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
	ingotElectrum,
	ingotAluBrass,
	ingotManyullyn
] as IItemStack[];

//remove alloy furnace and Arc recipes
for item in removeAFArray{
    AlloySmelter.removeRecipe(item);
	ArcFurnace.removeRecipe(item);
}
val removeBlendCraftArray = [
	<immersiveengineering:metal:15>,
	<immersiveengineering:metal:16>,
	<immersiveengineering:metal:17>,
	<thermalfoundation:material:96>,
	<thermalfoundation:material:97>,
	<thermalfoundation:material:98>,
	<thermalfoundation:material:99>,
	<thermalfoundation:material:100>
] as IItemStack[];
for item in removeBlendCraftArray{
    recipes.remove(item);
}

//Kill Elecflux grinding as it needs to be crafted due to multi-inputs
Crusher.removeRecipesForInput(dustElecFluxForRemoval);
Pulverizer.removeRecipe(ingotElecFlux);
Manufactory.removeRecipeWithInput(ingotElecFlux);

///////////////////////////
//  Alloy klin recipes   //
///////////////////////////

// It's A Steel
AlloySmelter.addRecipe(ingotSteel, ingotIron*2, coalCoke, 200);
AlloySmelter.addRecipe(ingotSteel, ingotIron*2, cokeDust, 200);
AlloySmelter.addRecipe(ingotSteel, ingotIron*2, charcoal, 200);
AlloySmelter.addRecipe(ingotSteel, ingotIron*2, charDust, 200);
AlloySmelter.addRecipe(ingotSteel, dustIron*2, coalCoke, 200);
AlloySmelter.addRecipe(ingotSteel, dustIron*2, cokeDust, 200);
AlloySmelter.addRecipe(ingotSteel, dustIron*2, charcoal, 200);
AlloySmelter.addRecipe(ingotSteel, dustIron*2, charDust, 200);

//Constantantly Spaiging
AlloySmelter.addRecipe(ingotConstantan, ingotCopper, ingotNickel, 200);
AlloySmelter.addRecipe(ingotConstantan, ingotCopper, dustNickel, 200);
AlloySmelter.addRecipe(ingotConstantan, dustCopper, ingotNickel, 200);
AlloySmelter.addRecipe(ingotConstantan, dustCopper, dustNickel, 200);

//Electrum
AlloySmelter.addRecipe(ingotElectrum, ingotGold, ingotSilver, 200);
AlloySmelter.addRecipe(ingotElectrum, ingotGold, dustSilver, 200);
AlloySmelter.addRecipe(ingotElectrum, dustGold, ingotSilver, 200);
AlloySmelter.addRecipe(ingotElectrum, dustGold, dustSilver, 200);

//Trump Ingots
AlloySmelter.addRecipe(ingotSignalum, dustSignalum*2, sand, 200);
//Light Shit
AlloySmelter.addRecipe(ingotLumium, dustLumium*2, sand, 200);
//Fuckin Spensive
AlloySmelter.addRecipe(ingotEnderium, dustEnderium*2, sand, 200);
//FUKSED ELEKTRUM
AlloySmelter.addRecipe(ingotElecFlux, dustElecFlux*2, sand, 200);
//BRONZE AGE
AlloySmelter.addRecipe(ingotBronze*2, ingotCopper*3, ingotTin, 200);
AlloySmelter.addRecipe(ingotBronze*2, ingotCopper*3, dustTin, 200);
AlloySmelter.addRecipe(ingotBronze*2, dustCopper*3, ingotTin, 200);
AlloySmelter.addRecipe(ingotBronze*2, dustCopper*3, dustTin, 200);
//Invariably
AlloySmelter.addRecipe(ingotInvar*2, ingotIron*2, ingotNickel, 200);
AlloySmelter.addRecipe(ingotInvar*2, ingotIron*2, dustNickel, 200);
AlloySmelter.addRecipe(ingotInvar*2, dustIron*2, ingotNickel, 200);
AlloySmelter.addRecipe(ingotInvar*2, dustIron*2, dustNickel, 200);
//Cop Iron
AlloySmelter.addRecipe(ingotPigIron, ingotIron*2, clay, 200);
AlloySmelter.addRecipe(ingotPigIron, dustIron*2, clay, 200);
//Aluminum Brass Class Tin
AlloySmelter.addRecipe(ingotAluBrass*2, ingotAluminum*3, ingotCopper, 200);
AlloySmelter.addRecipe(ingotAluBrass*2, ingotAluminum*3, dustCopper, 200);
AlloySmelter.addRecipe(ingotAluBrass*2, dustAluminum*3, ingotCopper, 200);
AlloySmelter.addRecipe(ingotAluBrass*2, dustAluminum*3, dustCopper, 200);
//Silicarbide
AlloySmelter.addRecipe(ingotSiliconCarbide, silicon, graphite, 200);
AlloySmelter.addRecipe(ingotSiliconCarbide, silicon, dustGraphite, 200);
//Man Oh Manyullyn
AlloySmelter.addRecipe(ingotManyullyn, ingotCobalt, ingotArdite, 2000);
//Knightslam
AlloySmelter.addRecipe(ingotKnightslime, ingotIron, slimePurple, 200);
//y'all forgot about zircaloy
AlloySmelter.addRecipe(ingotZircaloy*4,ingotZircon*7,ingotTin,200);
AlloySmelter.addRecipe(ingotZircaloy*4,dustZircon*7,dustTin,200);
AlloySmelter.addRecipe(ingotZircaloy*4,dustZircon*7,ingotTin,200);
AlloySmelter.addRecipe(ingotZircaloy*4,ingotZircon*7,dustTin,200);
//HSLAMASS
AlloySmelter.addRecipe(ingotHSLA*8,ingotIron*15,dustCarbMan,200);
AlloySmelter.addRecipe(ingotHSLA*8,dustIron*15,dustCarbMan,200);
//SPOOKY SHIT, MANG
AlloySmelter.addRecipe(ingotMithminite,ingotMana,quicksilver,100);
AlloySmelter.addRecipe(ingotStarmetal,ingotMana,aquamarine,100);
AlloySmelter.addRecipe(ingotLivium,ingotMana,zedFlesh,100);
AlloySmelter.addRecipe(ingotManasteel,ingotMana,ingotSteel,100);
AlloySmelter.addRecipe(ingotThaumium,ingotMana,visPraycan,100);
AlloySmelter.addRecipe(ingotMithrillium,ingotMana,amber,100);
AlloySmelter.addRecipe(ingotTerrasteel,ingotMana,visTerra,100);
AlloySmelter.addRecipe(ingotAdaminite,ingotMana,cotton,100);
AlloySmelter.addRecipe(ingotVoidmetal,ingotMana,obsidian,100);

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
InductionSmelter.addRecipe(ingotPigIron, ingotIronIF, clay, 3200);
InductionSmelter.addRecipe(ingotPigIron, dustIronIF, clay, 2400);

//titanium-iridium
InductionSmelter.addRecipe(ingotTitaniumIridium*2, ingotTitanium, dustIridiumIF, 1600);
InductionSmelter.addRecipe(ingotTitaniumIridium*2, dustsTitanium, ingotIridiumIF, 1600);
InductionSmelter.addRecipe(ingotTitaniumIridium*2, dustsTitanium, dustIridiumIF, 1200);

//titanium aluminide
InductionSmelter.addRecipe(ingotTitaniumIridium*2, ingotTitanium*3, dustAluminumIF*7, 1600);
InductionSmelter.addRecipe(ingotTitaniumIridium*2, dustsTitanium*3, ingotAluminumIF*7, 1600);
InductionSmelter.addRecipe(ingotTitaniumIridium*2, dustsTitanium*3, dustAluminumIF*7, 1200);
//silicarbide
InductionSmelter.addRecipe(ingotSiliconCarbide*2, siliconIF, graphiteIF, 1600);

//Knightslime
InductionSmelter.addRecipe(ingotKnightslime*2, ingotIronIF, slimePurple, 1600);

//Zircaloy
InductionSmelter.addRecipe(ingotZircaloy*8, ingotZircon*7, dustTinIF, 3200);
InductionSmelter.addRecipe(ingotZircaloy*8, dustZircon*7, dustTinIF, 3200);

//AYCH ESS ELL AY
InductionSmelter.addRecipe(ingotHSLA*16, ingotIronIF*15, dustCarbMan, 4800);
InductionSmelter.addRecipe(ingotHSLA*16, dustIronIF*15, dustCarbMan, 4800);

///////////////////////////
//  ARC COCKACE RECIPES //
///////////////////////////


//steel
ArcFurnace.addRecipe(ingotSteel*2, ingotIron, slag, 100, 1048, [coalCoke], "Alloying");
ArcFurnace.addRecipe(ingotSteel*2, ingotIron, slag, 100, 1048, [cokeDust], "Alloying");
ArcFurnace.addRecipe(ingotSteel*2, ingotIron, slag, 100, 1048, [charcoal], "Alloying");
ArcFurnace.addRecipe(ingotSteel*2, ingotIron, slag, 100, 1048, [charDust], "Alloying");
ArcFurnace.addRecipe(ingotSteel*2, dustIron, slag, 100, 1048, [coalCoke], "Alloying");
ArcFurnace.addRecipe(ingotSteel*2, dustIron, slag, 100, 1048, [cokeDust], "Alloying");
ArcFurnace.addRecipe(ingotSteel*2, dustIron, slag, 100, 1048, [charcoal], "Alloying");
ArcFurnace.addRecipe(ingotSteel*2, dustIron, slag, 100, 1048, [charDust], "Alloying");

//constantan
ArcFurnace.addRecipe(ingotConstantan*2, ingotCopper, slag, 100, 1048, [ingotNickel], "Alloying");
ArcFurnace.addRecipe(ingotConstantan*2, ingotCopper, slag, 100, 1048, [dustNickel], "Alloying");
ArcFurnace.addRecipe(ingotConstantan*2, dustCopper, slag, 100, 1048, [ingotNickel], "Alloying");
ArcFurnace.addRecipe(ingotConstantan*2, dustCopper, slag, 100, 1048, [dustNickel], "Alloying");

//electrum
ArcFurnace.addRecipe(ingotElectrum*4, ingotGold, slag, 100,1048, [ingotSilver], "Alloying");
ArcFurnace.addRecipe(ingotElectrum*4, ingotGold, slag, 100, 1048, [dustSilver], "Alloying");
ArcFurnace.addRecipe(ingotElectrum*4, dustGold, slag, 100, 1048, [ingotSilver], "Alloying");
ArcFurnace.addRecipe(ingotElectrum*4, dustGold, slag, 100, 1048, [dustSilver], "Alloying");

//signalum
ArcFurnace.addRecipe(ingotSignalum*8, dustSilver, slag, 100, 4048, [dustCopper*3,dustRedstone], "Alloying");

//lumium
ArcFurnace.addRecipe(ingotLumium*8, dustSilver, slag, 100, 4048, [dustTin*3, dustGlowstone], "Alloying");

//enderium
ArcFurnace.addRecipe(ingotEnderium*8, dustPlatinum, slag, 100, 4048, [dustLead*2, endPearl], "Alloying");

//electrum fluxed
ArcFurnace.addRecipe(ingotElecFlux, dustSilver, slag, 100, 4048, [dustGold, dustRedstone], "Alloying");

//bronze
ArcFurnace.addRecipe(ingotBronze*8, ingotCopper*3, slag, 100, 1048, [ingotTin], "Alloying");
ArcFurnace.addRecipe(ingotBronze*8, ingotCopper*3, slag, 100, 1048, [dustTin], "Alloying");
ArcFurnace.addRecipe(ingotBronze*8, dustCopper*3, slag, 100, 1048, [ingotTin], "Alloying");
ArcFurnace.addRecipe(ingotBronze*8, dustCopper*3, slag, 100, 1048, [dustTin], "Alloying");

//invar
ArcFurnace.addRecipe(ingotInvar*5, ingotIron*2, slag, 100, 1048, [ingotNickel], "Alloying");
ArcFurnace.addRecipe(ingotInvar*5, ingotIron*2, slag, 100, 1048, [dustNickel], "Alloying");
ArcFurnace.addRecipe(ingotInvar*5, dustIron*2, slag, 100, 1048, [ingotNickel], "Alloying");
ArcFurnace.addRecipe(ingotInvar*5, dustIron*2, slag, 100, 1048, [dustNickel], "Alloying");

//pig iron
ArcFurnace.addRecipe(ingotPigIron*4, ingotIron*2, slag, 100, 1048,[clay,zedFlesh*2], "Alloying");
ArcFurnace.addRecipe(ingotPigIron*4, dustIron*2, slag, 100, 1048,[clay,zedFlesh*2], "Alloying");

//aluminum brass
ArcFurnace.addRecipe(ingotAluBrass*8, ingotAluminum*3, slag, 100, 512, [ingotCopper], "Alloying");
ArcFurnace.addRecipe(ingotAluBrass*8, ingotAluminum*3, slag, 100, 512, [dustCopper], "Alloying");
ArcFurnace.addRecipe(ingotAluBrass*8, dustAluminum*3, slag, 100, 512, [ingotCopper], "Alloying");
ArcFurnace.addRecipe(ingotAluBrass*8, dustAluminum*3, slag, 100, 512, [dustCopper], "Alloying");

//silicon carbide
ArcFurnace.addRecipe(ingotSiliconCarbide*4, silicon, slag, 100, 1048, [graphite], "Alloying");
ArcFurnace.addRecipe(ingotSiliconCarbide*4, silicon, slag, 100, 1048, [dustGraphite], "Alloying");

//manyullyn
ArcFurnace.addRecipe(ingotManyullyn*4, ingotCobalt, slag, 200, 2096, [ingotArdite], "Alloying");

//knightslime
ArcFurnace.addRecipe(ingotKnightslime*8, ingotIron*4, slag, 100, 1048,[searedBrick*2, slimePurple], "Alloying");
ArcFurnace.addRecipe(ingotKnightslime*8, ingotIron*4, slag, 100, 1048,[searedBlock, slimePurple], "Alloying");

//titanium aluminide
ArcFurnace.addRecipe(ingotTitaniumAluminide*6, ingotIron*7, slag, 200, 2096, [dustAluminum*3], "Alloying");
ArcFurnace.addRecipe(ingotTitaniumAluminide*6, dustIron*7, slag, 200, 2096, [ingotAluminum*3], "Alloying");
ArcFurnace.addRecipe(ingotTitaniumAluminide*6, ingotIron*7, slag, 200, 2096, [ingotAluminum*3], "Alloying");
ArcFurnace.addRecipe(ingotTitaniumAluminide*6, dustIron*7, slag, 200, 2096, [dustAluminum*3], "Alloying");

//titanium-iridium
ArcFurnace.addRecipe(ingotTitaniumIridium*4, ingotTitanium, slag, 200, 2096, [ingotIridium], "Alloying");
ArcFurnace.addRecipe(ingotTitaniumIridium*4, dustTitanium, slag, 200, 2096, [ingotIridium], "Alloying");
ArcFurnace.addRecipe(ingotTitaniumIridium*4, ingotTitanium, slag, 200, 2096, [dustIridium], "Alloying");
ArcFurnace.addRecipe(ingotTitaniumIridium*4, dustTitanium, slag, 200, 2096, [dustIridium], "Alloying");

//zirconium alloy
ArcFurnace.addRecipe(ingotZircaloy*16, ingotZirconium*7, slag, 200, 2096, [dustTin], "Alloying");
ArcFurnace.addRecipe(ingotZircaloy*16, ingotZirconium*7, slag, 200, 2096, [ingotTin], "Alloying");

//HSLA steel
ArcFurnace.addRecipe(ingotHSLA*16, dustIron*8, slag, 200, 2096, [dustCarbMan], "Alloying");
ArcFurnace.addRecipe(ingotHSLA*16, ingotIron*8, slag, 200, 2096, [dustCarbMan], "Alloying");
