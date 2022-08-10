import 'package:flutter/material.dart';

class OAuthButton extends StatelessWidget {
  const OAuthButton({
    Key? key,
    this.onPressed,
    required this.color,
    required this.iconUrl,
    required this.iconSize,
  }) : super(key: key);

  final void Function()? onPressed;
  final Color color;
  final String iconUrl;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: color,
            side: BorderSide(
              color: color,
            )),
        child: Image.asset(
          iconUrl,
          width: iconSize,
        ),
      ),
    );
  }
}
