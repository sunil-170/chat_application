import 'package:flutter/material.dart';

class MyRoutes {
  static pushto(BuildContext context, Widget target) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => target));
  static pushAndRemove(BuildContext context, Widget target) =>
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => target), (route) => false);
}
