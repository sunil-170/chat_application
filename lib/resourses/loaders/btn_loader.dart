import 'package:chat_application/resourses/components/utils/App_colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class BtnLoader extends StatelessWidget {
  const BtnLoader({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.discreteCircle(
        color: AppColors().Primary,
        size: 30,
      ),
    );
  }
}
