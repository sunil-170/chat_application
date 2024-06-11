import 'package:chat_application/View/Onboarding/onboarding.view.dart';
import 'package:chat_application/resourses/Routes/route_methods.dart';
import 'package:chat_application/resourses/components/utils/app_images.dart';
import 'package:chat_application/resourses/components/utils/textstyle.dart';
import 'package:chat_application/resourses/loaders/btn_loader.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // final textStyle = GetTextThemes();
  @override
  void initState() {
    Future.delayed(
        Duration.zero, () => MyRoutes.pushto(context, Onboardingview()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AppImages().app_logo,
              height: 100,
            ),
            const Gap(5),
            Text(
              "Chatbox",
              style: GetTextThemes().fs26_bold,
            ),
            const Gap(6),
            const BtnLoader()
          ],
        ),
      ),
    );
  }
}
