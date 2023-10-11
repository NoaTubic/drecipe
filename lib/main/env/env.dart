enum Flavor { dev, staging, prod }

abstract class Env {
  Flavor flavor;
  String appName;
  String baseUrl;

  Env(this.flavor, this.appName, this.baseUrl);
}
