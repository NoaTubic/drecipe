import 'package:drecipe/core/env/env.dart';
import 'package:flutter/material.dart';

typedef E = Environment;

class Environment extends InheritedWidget {
  final Env _env;

  const Environment(
    this._env, {
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  Env get env => _env;

  static Environment of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Environment>()
        as Environment;
  }

  @override
  bool updateShouldNotify(Environment oldWidget) => false;
}
