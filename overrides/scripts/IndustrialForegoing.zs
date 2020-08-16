import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Refinery;
import crafttweaker.item.IItemStack;

var ingotPlastic	= <industrialforegoing:plastic>;
var ballTar			= <thermalfoundation:material:833>;
var ballRosin		= <thermalfoundation:material:832>;
var itemRubber		= <ore:itemRubber>;
var fuelBiodiesel	= <liquid:biodiesel>;
var water			= <liquid:water>;

val removeBlendCraftArray = [
	<industrialforegoing:laser_lens_inverted:0>,
	<industrialforegoing:laser_lens_inverted:1>,
	<industrialforegoing:laser_lens_inverted:2>,
	<industrialforegoing:laser_lens_inverted:3>,
	<industrialforegoing:laser_lens_inverted:4>,
	<industrialforegoing:laser_lens_inverted:5>,
	<industrialforegoing:laser_lens_inverted:6>,
	<industrialforegoing:laser_lens_inverted:7>,
	<industrialforegoing:laser_lens_inverted:8>,
	<industrialforegoing:laser_lens_inverted:9>,
	<industrialforegoing:laser_lens_inverted:10>,
	<industrialforegoing:laser_lens_inverted:11>,
	<industrialforegoing:laser_lens_inverted:12>,
	<industrialforegoing:laser_lens_inverted:13>,
	<industrialforegoing:laser_lens_inverted:14>,
	<industrialforegoing:laser_lens_inverted:15>
] as IItemStack[];
for item in removeBlendCraftArray{
    recipes.remove(item);
}

//adjust itemRubber oredict
itemRubber.remove(ingotPlastic);
itemRubber.add(ballTar, ballRosin);

//itemRubber smelts into ingotPlastic
furnace.addRecipe(ingotPlastic, itemRubber);
RedstoneFurnace.addRecipe(ingotPlastic, ballRosin, 2000);
RedstoneFurnace.addRecipe(ingotPlastic, ballTar, 2000);

//fuelBiodiesel refines to ingotPlastic
Refinery.addRecipe(water, ingotPlastic, fuelBiodiesel * 100, 5000);