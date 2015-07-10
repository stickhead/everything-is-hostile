if (FML.isModLoaded("Botania") && Botania_enabled){
    NEI.override("Botania:twigWand", [0]);

    NEI.hide("Botania:bifrost");
    NEI.hide("Botania:solidVine");
    NEI.hide("Botania:buriedPetals");
    NEI.hide("Botania:fakeAir");
    NEI.hide("Botania:*Slab*Full");
}