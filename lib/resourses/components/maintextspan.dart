import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextSpanMain extends StatelessWidget {
  String text, textvalue;
  TextStyle style, valuestyle;
  Function onTap;
  TextSpanMain(
      {super.key,
      required this.text,
      required this.textvalue,
      required this.style,
      required this.valuestyle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(text: text, style: style),
      TextSpan(
          text: textvalue,
          style: valuestyle,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              onTap();
            })
    ]));
  }
}
