import 'package:chat_application/View/Auth/signin.dart';
import 'package:chat_application/View/Auth/signup.dart';
import 'package:chat_application/View/Onboarding/login_method_tile.dart';
import 'package:chat_application/data/app_data.dart';
import 'package:chat_application/resourses/Buttons/GeneralTextBtn.dart';
import 'package:chat_application/resourses/Routes/route_methods.dart';
import 'package:chat_application/resourses/components/maintextspan.dart';
import 'package:chat_application/resourses/components/utils/App_colors.dart';
import 'package:chat_application/resourses/components/utils/app_images.dart';
import 'package:chat_application/resourses/components/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Onboardingview extends StatelessWidget {
  Onboardingview({super.key});
  final font = GetTextThemes();
  final color = AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [const Color(0xff221928), AppColors().blackColor])),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
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
              const Gap(10),
              Text(
                "Connect friends easily & quickly",
                style: GetTextThemes()
                    .fs40_medium
                    .copyWith(color: AppColors().white),
              ),
              const Gap(10),
              Text(
                "Our chat app is the perfect way to stay connected with friends and family.",
                style: GetTextThemes()
                    .fs22_regular
                    .copyWith(color: AppColors().dark_grey),
              ),
              Gap(80.h),
              GridView.builder(
                shrinkWrap: true,
                itemCount: Localdata.loginbtn.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 50, crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return LoginTile(
                      Bordercolor: Colors.white,
                      image: Localdata.loginbtn[index]);
                },
              ),
              Gap(30.h),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColors().dark_grey,
                    ),
                  ),
                  const Gap(10),
                  Text(
                    "Or",
                    style: GetTextThemes()
                        .fs14_medium
                        .copyWith(color: AppColors().dark_grey),
                  ),
                  const Gap(10),
                  Expanded(
                    child: Divider(
                      color: AppColors().dark_grey,
                    ),
                  )
                ],
              ),
              Gap(80.h),
              Row(
                children: [
                  GeneralTextButton(
                      isDarkTheme: false,
                      isExpanded: true,
                      onTap: () {
                        MyRoutes.pushto(context, const SignUpView());
                      },
                      title: "Signup With mail")
                ],
              ),
              Gap(10.h),
              TextSpanMain(
                  onTap: () {
                    MyRoutes.pushto(context, SigninView());
                  },
                  text: "Existing account?",
                  textvalue: "Log in",
                  style: font.fs12_medium.copyWith(color: color.white),
                  valuestyle: font.fs12_bold.copyWith(color: color.white))
            ],
          ),
        ),
      )),
    );
  }
}
