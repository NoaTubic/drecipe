import 'package:drecipe/core/env/env.dart';
import 'package:drecipe/core/env/env_constants.dart';

class EnvProd implements Env {
  @override
  Flavor flavor = Flavor.prod;

  @override
  String appName = EnvConstants.appTitleProd;

  @override
  String baseUrl = EnvConstants.baseUrlProd;
}
