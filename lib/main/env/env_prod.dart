import 'package:drecipe/main/env/env.dart';
import 'package:drecipe/main/env/env_constants.dart';

class EnvProd implements Env {
  @override
  Flavor flavor = Flavor.prod;

  @override
  String appName = EnvConstants.appTitleProd;

  @override
  String baseUrl = EnvConstants.baseUrlProd;
}
