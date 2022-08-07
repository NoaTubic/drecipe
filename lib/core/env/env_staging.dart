import 'package:drecipe/core/env/env.dart';
import 'package:drecipe/core/env/env_constants.dart';

class EnvStaging implements Env {
  @override
  Flavor flavor = Flavor.staging;

  @override
  String appName = EnvConstants.appTitleStaging;

  @override
  String baseUrl = EnvConstants.baseUrlStaging;
}
