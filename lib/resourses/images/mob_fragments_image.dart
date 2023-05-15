class MobFragmentsImage {
  static String agentSacrificialKnife =
      "Item_Agent_Sacrificial_Knife.webp";
  static String blackBronzeHorn = "Item_Black_Bronze_Horn.webp";
  static String blackCrystalHorn = "Item_Black_Crystal_Horn.webp";
  static String chaosAxis = "Item_Chaos_Axis.webp";
  static String chaosBolt = "Item_Chaos_Bolt.webp";
  static String chaosCircuit = "Item_Chaos_Circuit.webp";
  static String chaosCore = "Item_Chaos_Core.webp";
  static String chaosDevice = "Item_Chaos_Device.webp";
  static String chaosGear = "Item_Chaos_Gear.webp";
  static String chaosModule = "Item_Chaos_Module.webp";
  static String chaosOculus = "Item_Chaos_Oculus.webp";
  static String chaosStorage = "Item_Chaos_Storage.webp";
  static String concealedClaw = "Item_Concealed_Claw.webp";
  static String concealedTalon = "Item_Concealed_Talon.webp";
  static String concealedUnguis = "Item_Concealed_Unguis.webp";
  static String crystallineCystDust = "Item_Crystalline_Cyst_Dust.webp";
  static String crystalPrism = "Item_Crystal_Prism.webp";
  static String damagedMask = "Item_Damaged_Mask.webp";
  static String damagedPrism = "Item_Damaged_Prism.webp";
  static String darkStatuette = "Item_Dark_Statuette.webp";
  static String deadLeyLineBranch = "Item_Dead_Ley_Line_Branch.webp";
  static String deadLeyLineLeaves = "Item_Dead_Ley_Line_Leaves.webp";
  static String deathlyStatuette = "Item_Deathly_Statuette.webp";
  static String dismalPrism = "Item_Dismal_Prism.webp";
  static String diviningScroll = "Item_Divining_Scroll.webp";
  static String dormantFungalNucleus =
      "Item_Dormant_Fungal_Nucleus.webp";
  static String energyNectar = "Item_Energy_Nectar.webp";
  static String fadedRedSatin = "Item_Faded_Red_Satin.webp";
  static String famedHandguard = "Item_Famed_Handguard.webp";
  static String firmArrowhead = "Item_Firm_Arrowhead.webp";
  static String forbiddenCurseScroll = "Item_Forbidden_Curse_Scroll.png";
  static String fossilizedBoneShard = "Item_Fossilized_Bone_Shard.webp";
  static String fragileBoneShard = "Item_Fragile_Bone_Shard.webp";
  static String fungalSpores = "Item_Fungal_Spores.webp";
  static String gloomyStatuette = "Item_Gloomy_Statuette.webp";
  static String goldenRavenInsignia = "Item_Golden_Raven_Insignia.webp";
  static String heavyHorn = "Item_Heavy_Horn.webp";
  static String hunterSacrificialKnife =
      "Item_Hunter_Sacrificial_Knife.webp";
  static String inactivatedFungalNucleus =
      "Item_Inactivated_Fungal_Nucleus.webp";
  static String inspectorSacrificialKnife =
      "Item_Inspector_Sacrificial_Knife.webp";
  static String kageuchiHandguard = "Item_Kageuchi_Handguard.webp";
  static String leyLineSprout = "Item_Ley_Line_Sprout.webp";
  static String lieutenantInsignia = "Item_Lieutenant_Insignia.webp";
  static String luminescentPollen = "Item_Luminescent_Pollen.webp";
  static String mistGrass = "Item_Mist_Grass.webp";
  static String mistGrassPollen = "Item_Mist_Grass_Pollen.webp";
  static String mistGrassWick = "Item_Mist_Grass_Wick.webp";
  static String oldHandguard = "Item_Old_Handguard.webp";
  static String ominousMask = "Item_Ominous_Mask.webp";
  static String polarizingPrism = "Item_Polarizing_Prism.webp";
  static String radiantPrism = "Item_Radiant_Prism.webp";
  static String recruitInsignia = "Item_Recruit_Insignia.webp";
  static String richRedBrocade = "Item_Rich_Red_Brocade.webp";
  static String robustFungalNucleus = "Item_Robust_Fungal_Nucleus.webp";
  static String sealedScroll = "Item_Sealed_Scroll.webp";
  static String sergeantInsignia = "Item_Sergeant_Insignia.webp";
  static String sharpArrowhead = "Item_Sharp_Arrowhead.webp";
  static String shimmeringNectar = "Item_Shimmering_Nectar.webp";
  static String silverRavenInsignia = "Item_Silver_Raven_Insignia.webp";
  static String slimeMinLevel = "Item_Slime_Concentrate.webp";
  static String slimeMaxLevel = "Item_Slime_Condensate.webp";
  static String slimeSecretions = "Item_Slime_Secretions.webp";
  static String spectralHeart = "Item_Spectral_Heart.webp";
  static String spectralHusk = "Item_Spectral_Husk.webp";
  static String spectralNucleus = "Item_Spectral_Nucleus.webp";
  static String stainedMask = "Item_Stained_Mask.webp";
  static String sturdyBoneShard = "Item_Sturdy_Bone_Shard.webp";
  static String treasureHoarderInsignia =
      "Item_Treasure_Hoarder_Insignia.webp";
  static String trimmedRedSilk = "Item_Trimmed_Red_Silk.webp";
  static String turbidPrism = "Item_Turbid_Prism.webp";
  static String weatheredArrowhead = "Item_Weathered_Arrowhead.webp";
  static String whopperflowerNectar = "Item_Whopperflower_Nectar.webp";
}

extension HeaderForImageBossFragment on String {
  String mobFragmentsImagePath() {
    return "assets/mob_fragments/${this}";
  }
}
