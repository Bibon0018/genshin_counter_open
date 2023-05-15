class BossMaterialImage {
  static String basalt_Pillar = "Item_Basalt_Pillar.webp";
  static String cleansing_Heart = "Item_Cleansing_Heart.webp";
  static String crystalline_Bloom = "Item_Crystalline_Bloom.webp";
  static String dew_of_Repudiation = "Item_Dew_of_Repudiation.webp";
  static String dragonheir_False_Fin = "Item_Dragonheir_False_Fin.webp";
  static String everflame_Seed = "Item_Everflame_Seed.webp";
  static String hoarfrost_Core = "Item_Hoarfrost_Core.webp";
  static String hurricane_Seed = "Item_Hurricane_Seed.webp";
  static String juvenile_Jade = "Item_Juvenile_Jade.webp";
  static String lightning_Prism = "Item_Lightning_Prism.webp";
  static String light_Guiding_Tetrahedron =
      "Item_Light_Guiding_Tetrahedron.webp";
  static String majestic_Hooked_Beak = "Item_Majestic_Hooked_Beak.webp";
  static String marionette_Core = "Item_Marionette_Core.webp";
  static String perpetual_Caliber = "Item_Perpetual_Caliber.webp";
  static String perpetual_Heart = "Item_Perpetual_Heart.webp";
  static String quelled_Creeper = "Item_Quelled_Creeper.webp";
  static String riftborn_Regalia = "Item_Riftborn_Regalia.webp";
  static String runic_Fang = "Item_Runic_Fang.webp";
  static String smoldering_Pearl = "Item_Smoldering_Pearl.webp";
  static String storm_Beads = "Item_Storm_Beads.webp";
  static String thunderclap_Fruitcore = "Item_Thunderclap_Fruitcore.webp";
  static String pseudoStamens = "Item_Pseudo-Stamens.webp";
}

extension HeaderForImageTalentFragment on String {
  String bossMaterialImagePath() {
    return "assets/boss_material/${this}";
  }
}
