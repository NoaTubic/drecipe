abstract class Constants {
  static int minPasswordLength = 6;
  static int maxUsernameLength = 20;
}

abstract class HeroConstants {
  static const String logo = 'logo';
}

abstract class DurationConstants {
  static const int d093 = 930;
  static const int d1 = 1;
  static const int d2 = 2;
  static const int d3 = 3;
}

abstract class OpacityConstants {
  static const double op01 = 0.1;
  static const double op02 = 0.2;
  static const double op03 = 0.3;
  static const double op04 = 0.4;
  static const double op05 = 0.5;
  static const double op06 = 0.6;
  static const double op07 = 0.7;
  static const double op08 = 0.8;
  static const double op09 = 0.9;
}

abstract class RegexConstants {
  static const String email =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  static const String name = r"""^[a-zA-Z0-9.]+""";
}
