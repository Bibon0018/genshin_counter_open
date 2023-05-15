class SpecialtiesImage {
  static String amakumoFruit = "Item_Amakumo_Fruit.webp";
  static String callaLily = "Item_Calla_Lily.webp";
  static String cecilia = "Item_Cecilia.webp";
  static String corLapis = "Item_Cor_Lapis.webp";
  static String crystalMarrow = "Item_Crystal_Marrow.webp";
  static String dandelionSeed = "Item_Dandelion_Seed.webp";
  static String dendrobium = "Item_Dendrobium.webp";
  static String fluorescentFungus = "Item_Fluorescent_Fungus.webp";
  static String glazeLily = "Item_Glaze_Lily.webp";
  static String hennaBerry = "Item_Henna_Berry.webp";
  static String jueyunChili = "Item_Jueyun_Chili.webp";
  static String kalpalataLotus = "Item_Kalpalata_Lotus.webp";
  static String nakuWeed = "Item_Naku_Weed.webp";
  static String nilotpalaLotus = "Item_Nilotpala_Lotus.webp";
  static String noctilucousJade = "Item_Noctilucous_Jade.webp";
  static String onikabuto = "Item_Onikabuto.webp";
  static String philanemoMushroom = "Item_Philanemo_Mushroom.webp";
  static String qingxin = "Item_Qingxin.webp";
  static String rukkhashavaMushrooms = "Item_Rukkhashava_Mushrooms.webp";
  static String sakuraBloom = "Item_Sakura_Bloom.webp";
  static String sangoPearl = "Item_Sango_Pearl.webp";
  static String scarab = "Item_Scarab.webp";
  static String seaGanoderma = "Item_Sea_Ganoderma.webp";
  static String silkFlower = "Item_Silk_Flower.webp";
  static String smallLampGrass = "Item_Small_Lamp_Grass.webp";
  static String starconch = "Item_Starconch.webp";
  static String valberry = "Item_Valberry.webp";
  static String violetgrass = "Item_Violetgrass.webp";
  static String windwheelAster = "Item_Windwheel_Aster.webp";
  static String wolfhook = "Item_Wolfhook.webp";
  static String padisarah = "Item_Padisarah.webp";
  static String sandGreasePupa = "Item_Sand_Grease_Pupa.webp";
}

extension HeaderForImageBossFragment on String {
  String specialtiesImagePath() {
    return "assets/specialties/${this}";
  }
}
