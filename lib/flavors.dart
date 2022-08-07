enum Flavor {
  DEV,
  STAGING,
  PROD,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'drecipe Development';
      case Flavor.STAGING:
        return 'drecipe Staging';
      case Flavor.PROD:
        return 'drecipe';
      default:
        return 'title';
    }
  }

}
