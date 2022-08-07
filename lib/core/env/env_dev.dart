import 'package:drecipe/core/env/env.dart';
import 'package:drecipe/core/env/env_constants.dart';

class EnvDev implements Env {
  @override
  Flavor flavor = Flavor.dev;

  @override
  String appName = EnvConstants.appTitleDev;

  @override
  String baseUrl = EnvConstants.baseUrlDev;
}
