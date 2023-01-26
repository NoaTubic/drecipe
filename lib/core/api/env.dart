import 'package:envied/envied.dart';

part 'env.generated.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'API_KEY', obfuscate: true)
  static final apiKey = _Env.apiKey;
}
