import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Refinery;

var ingotPlastic	= <industrialforegoing:plastic>;
var ballTar			= <thermalfoundation:material:833>;
var ballRosin		= <thermalfoundation:material:832>;
var itemRubber		= <ore:itemRubber>;
var fuelBiodiesel	= <liquid:biodiesel>;
var water			= <liquid:water>;

//adjust itemRubber oredict
itemRubber.remove(ingotPlastic);
itemRubber.add(ballTar, ballRosin);

//itemRubber smelts into ingotPlastic
furnace.addRecipe(ingotPlastic, itemRubber);
RedstoneFurnace.addRecipe(ingotPlastic, ballRosin, 2000);
RedstoneFurnace.addRecipe(ingotPlastic, ballTar, 2000);

//fuelBiodiesel refines to ingotPlastic
Refinery.addRecipe(water, ingotPlastic, fuelBiodiesel * 100, 5000);