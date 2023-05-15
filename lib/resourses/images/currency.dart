class CurrencyImage {
  static String expLvl1 = "expLvl1.webp";
  static String expLvl2 = "expLvl2.webp";
  static String expLvl3 = "expLvl3.webp";
  static String mora = "mora.webp";
  static String crown = "crown.webp";
}

extension HeaderForImageTalentFragment on String {
  String currencyImagePath() {
    return "assets/currency/${this}";
  }
}
