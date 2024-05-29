import 'package:chat_application/resourses/components/utils/App_colors.dart';
import 'package:chat_application/resourses/components/utils/app_images.dart';
import 'package:chat_application/resourses/components/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Onboardingview extends StatelessWidget {
  const Onboardingview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomRight,
                colors: [
              const Color(0xff221928),
              AppColors().Primary,
              AppColors().redgradient
            ])),
        child: Column(
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages().app_vector),
                const Gap(10),
                Text(
                  "Chatbox",
                  style: GetTextThemes()
                      .fs14_medium
                      .copyWith(color: AppColors().white),
                )
              ],
            ),
            Text(
              "Connect friends easily & quickly",
              style: GetTextThemes()
                  .fs22_medium
                  .copyWith(color: AppColors().white),
            )
          ],
        ),
      )),
    );
  }
}
