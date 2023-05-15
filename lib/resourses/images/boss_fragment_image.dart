class BossFragmentImage {
  static String ashenHeart = "Item_Ashen_Heart.webp";
  static String bloodJadeBranch = "Item_Bloodjade_Branch.webp";
  static String dakaBell = "Item_Daka_Bell.webp";
  static String dragonLordCrown = "Item_Dragon_Lord_Crown.webp";
  static String dvalinClaw = "Item_Dvalin_Claw.webp";
  static String dvalinPlume = "Item_Dvalin_Plume.webp";
  static String dvalinSigh = "Item_Dvalin_Sigh.webp";
  static String gildedScale = "Item_Gilded_Scale.webp";
  static String hellfireButterfly = "Item_Hellfire_Butterfly.webp";
  static String mirrorOfMushin = "Item_Mirror_of_Mushin.webp";
  static String moltenMoment = "Item_Molten_Moment.webp";
  static String mudraOfTheMaleficGeneral =
      "Item_Mudra_of_the_Malefic_General.webp";
  static String puppetStrings = "Item_Puppet_Strings.webp";
  static String ringOfBoreas = "Item_Ring_of_Boreas.webp";
  static String shadowOfTheWarrior = "Item_Shadow_of_the_Warrior.webp";
  static String shardFoulLegacy = "Item_Shard_of_a_Foul_Legacy.webp";
  static String spiritLocketOfBoreas =
      "Item_Spirit_Locket_of_Boreas.webp";
  static String tailOfBoreas = "Item_Tail_of_Boreas.webp";
  static String tearsOfTheCalamitousGod =
      "Item_Tears_of_the_Calamitous_God.webp";
  static String theMeaningOfAeons = "Item_The_Meaning_of_Aeons.webp";
  static String tuskOfMonocerosCaeli =
      "Item_Tusk_of_Monoceros_Caeli.webp";
}

extension HeaderForImageBossFragment on String {
  String bossFragmentImagePath() {
    return "assets/boss_fragment/${this}";
  }
}
