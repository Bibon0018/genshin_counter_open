class RarityImage {
  static String blue = "blue.webp";
  static String green = "green.webp";
  static String orange = "orange.webp";
  static String purple = "purple.webp";
  static String grey = "grey.webp";
}

extension HeaderForImageTalentFragment on String {
  String rarityImagePath() {
    return "assets/rarity_image/${this}";
  }
}
