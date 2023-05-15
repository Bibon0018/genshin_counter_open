class FiltersImage {
  static String anemo = "anemo.webp".hIFF();
  static String bow = "bow.webp".hIFF();
  static String catalyst = "catalyst.webp".hIFF();
  static String claymore = "claymore.webp".hIFF();
  static String cryo = "cryo.webp".hIFF();
  static String dendro = "dendro.webp".hIFF();
  static String electro = "electro.webp".hIFF();
  static String geo = "geo.webp".hIFF();
  static String hydro = "hydro.webp".hIFF();
  static String polearm = "polearm.webp".hIFF();
  static String pyro = "pyro.webp".hIFF();
  static String sword = "sword.webp".hIFF();
  static String wish = "wish.webp".hIFF();
  static String redactor = "redactor.webp".hIFF();
}

extension HeaderForImageTalentFragment on String {
  String hIFF() {
    return "assets/filters/${this}";
  }
}
