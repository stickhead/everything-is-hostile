
//Modtweaker Tweaks
//Mana steel is cheaper with thaumium
mods.botania.ManaInfusion.removeRecipe(<Botania:manaResource>);
mods.botania.ManaInfusion.addInfusion(<Botania:manaResource>, <Thaumcraft:ItemResource:2>, 1000);

//Franken Skull
mods.botania.ManaInfusion.addInfusion(<EnderIO:itemFrankenSkull:2>, <EnderIO:itemFrankenSkull:1>, 100000);
mods.botania.ManaInfusion.addInfusion(<EnderIO:itemFrankenSkull:4>, <EnderIO:itemFrankenSkull:3>, 150000);


//Copper Wandcaps Require copper ingots and mana steel
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:WandCap:3>);
mods.thaumcraft.Arcane.addShaped("ASPECTS", <Thaumcraft:WandCap:3>, "ignis 2, aee 2, ordo 2", 
[[<ore:nuggetCopper>, <ore:ingotManasteel>, <ore:nuggetCopper>], 
[<ore:nuggetCopper>, null, <ore:nuggetCopper>]]);


//Gold Wandcaps Require gold essence and manasteel ingots and balance shard
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:WandCap:1>);
mods.thaumcraft.Arcane.addShaped("ASPECTS", <Thaumcraft:WandCap:1>, "ignis 3, aer 3, ordo 3",
[[<magicalcrops:magicalcrops_GoldEssence>, <ore:ingotManasteel>,
<magicalcrops:magicalcrops_GoldEssence>], [<magicalcrops:magicalcrops_GoldEssence>,
null, <magicalcrops:magicalcrops_GoldEssence>], [null, <Thaumcraft:ItemShard:6>, null]]
);


mods.thaumcraft.Crucible.removeRecipe(<ForbiddenMagic:UmbralBush>);
mods.thaumcraft.Crucible.addRecipe("ASPECTS", <ForbiddenMagic:UmbralBush>, <Botania:flower:15>, "tenebrae 8, victus 5");
mods.thaumcraft.Crucible.addRecipe("ASPECTS", <EnderIO:itemFrankenSkull:2>, <EnderIO:itemFrankenSkull:1>, "tenebrae 12, potentia 25");
mods.thaumcraft.Crucible.addRecipe("ASPECTS", <EnderIO:itemFrankenSkull:4>, <EnderIO:itemFrankenSkull:3>, "tenebrae 12, potentia 25, alienis 8");

//blood orb
mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:weakBloodOrb>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:weakBloodOrb>, <Botania:manaResource:2>, 1, 2000, 20, 20); //The last two are optional


mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:apprenticeBloodOrb>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:apprenticeBloodOrb>, <minecraft:emerald>, 2, 5000, 50, 50); 

mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:magicianBloodOrb>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:magicianBloodOrb>, <witchery:ingredient:10>, 3, 25000, 50, 50);

mods.bloodmagic.Altar.addRecipe(<EnderIO:itemFrankenSkull:2>, <EnderIO:itemFrankenSkull:1>, 2, 5000, 50, 50);
mods.bloodmagic.Altar.addRecipe(<EnderIO:itemFrankenSkull:4>, <EnderIO:itemFrankenSkull:3>, 3, 10000, 50, 50);

//Mark of the Falling tower Additions
//Ore Dictionary 
val myThaumcraft = <ore:myThaumcraft>;
myThaumcraft.add(<Thaumcraft:blockCustomOre:1>); 
myThaumcraft.add(<Thaumcraft:blockCustomOre:2>); 
myThaumcraft.add(<Thaumcraft:blockCustomOre:3>); 
myThaumcraft.add(<Thaumcraft:blockCustomOre:4>); 
myThaumcraft.add(<Thaumcraft:blockCustomOre:5>); 
myThaumcraft.add(<Thaumcraft:blockCustomOre:6>); 
myThaumcraft.add(<Thaumcraft:blockCustomOre:7); 

val myAM2Common = <ore:myAM2Common>
myAM2Common.add(<arsmagica2:vinteumOre:2>);
myAM2Common.add(<arsmagica2:vinteumOre>);
myAM2Common.add(<arsmagica2:vinteumOre:1>);

val myOres = <ore:myOres>
myOres.add(<TConstruct:SearedBrick:3>);
myOres.add(<TConstruct:SearedBrick:5>);
myOres.add(<TConstruct:SearedBrick:4>);

val mcOres = <ore:mcOres>
mcOres.add(<magicalcrops:magicalcrops_MinicioOre>);

mods.bloodmagic.FallingTower.removeFocus(<minecraft:nether_star>);
mods.bloodmagic.FallingTower.removeFocus(<minecraft:diamond>);
mods.bloodmagic.FallingTower.removeFocus(<minecraft:iron_block>);
mods.bloodmagic.FallingTower.removeFocus(<minecraft:stone>);

mods.bloodmagic.FallingTower.addFocus(<minecraft:stone>, 20 "oreCoal, 150, oreApatite, 50, oreIron, 50, mcOres, 30, myAM2Common, 20, myThaumcraft, 20, myOres, 20");
mods.bloodmagic.FallingTower.addFocus(<minecraft:iron_block>, 12 "oreCertusQuartz, 80, oreIron, 400, oreGold, 30, oreCopper, 200, oreTin, 140, oreSilver, 30, oreLapis, 60, oreRedstone, 100, mcOres, 150, myAM2Common, 20, myThaumcraft, 40, myOres, 90");
mods.bloodmagic.FallingTower.addFocus(<minecraft:diamond>, 10 "oreCertusQuartz, 150, oreDiamond, 100, oreEmerald, 75, oreCinnabar, 50, oreAmber, 50, mcOres, , myAM2Common, 20, myThaumcraft, 20, myOres, 20");
mods.bloodmagic.FallingTower.addFocus(<minecraft:nether_star>, 5 "oreDiamond, 150, oreEmerald, 100, oreQuartz, 250, oreSunstone, 5, oreMoonstone, 50");

//Add Minicio ore to orechid
mods.botania.Orechid.addOre(<magicalcrops:magicalcrops_MinicioOre>, 20000);
mods.botania.Orechid.addOre(<evilcraft:darkOre>, 10000);
mods.botania.Orechid.addOre(<ChromatiCraft:chromaticraft_block_tieredore>, 10000);
mods.botania.Orechid.addOre(<ChromatiCraft:chromaticraft_block_tieredore:1>, 5000);
mods.botania.Orechid.addOre(<ChromatiCraft:chromaticraft_block_tieredore:2>, 5000);
mods.botania.Orechid.addOre(<ChromatiCraft:chromaticraft_block_tieredore:3>, 5000);
mods.botania.Orechid.addOre(<ChromatiCraft:chromaticraft_block_tieredore:4>, 2000);
