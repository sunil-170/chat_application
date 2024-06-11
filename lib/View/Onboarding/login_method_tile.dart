import 'package:flutter/material.dart';

class LoginTile extends StatelessWidget {
  LoginTile({
    super.key,
    required this.image,
    required this.Bordercolor,
  });
  String image;
  Color Bordercolor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Bordercolor, width: 1)),
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}
