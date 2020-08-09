//adjust CFB book recipe
recipes.remove(<cookingforblockheads:recipe_book:2>);
recipes.addShapeless(<cookingforblockheads:recipe_book:2>, [<cookingforblockheads:recipe_book:1>, <minecraft:crafting_table>]);

//remove harvestcraft market
recipes.remove(<harvestcraft:market>);

// salt
recipes.removeShapeless(<harvestcraft:saltitem>, [<harvestcraft:potitem>, <ore:listAllwater>]);
recipes.addShapeless("salt", <harvestcraft:saltitem> * 3, [<ore:toolPot>, <ore:listAllwater>]);

// chestnut to flour
recipes.addShapeless("chestnutOil", <harvestcraft:chestnutbutteritem>, [<harvestcraft:juiceritem>, <harvestcraft:chestnutitem>] );