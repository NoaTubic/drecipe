import 'package:drecipe/core/env/widget/environment.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(E.of(context).env.appName),
      ),
      body: Center(
        child: Text(
          'Hello ${E.of(context).env.appName}',
        ),
      ),
    );
  }
}
