import 'package:chat_application/resourses/components/utils/App_colors.dart';
import 'package:flutter/material.dart';

class LoginTile extends StatelessWidget {
  LoginTile({super.key, required this.image});
  String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors().dark_grey, width: 1)),
        child: Image.asset(image),
      ),
    );
  }
}
