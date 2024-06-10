import 'package:chat_application/View/Onboarding/login_method_tile.dart';
import 'package:chat_application/data/app_data.dart';
import 'package:chat_application/resourses/Buttons/GeneralTextBtn.dart';
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
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [const Color(0xff221928), AppColors().blackColor])),
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
            Text(
              "Connect friends easily & quickly",
              style: GetTextThemes()
                  .fs40_medium
                  .copyWith(color: AppColors().white),
            ),
            Text(
              "Our chat app is the perfect way to stay connected with friends and family.",
              style: GetTextThemes()
                  .fs22_regular
                  .copyWith(color: AppColors().dark_grey),
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: Localdata.loginbtn.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 50, crossAxisCount: 3),
              itemBuilder: (context, index) {
                return LoginTile(image: Localdata.loginbtn[index]);
              },
            ),
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
            // const Spacer(),
            Row(
              children: [
                GeneralTextButton(
                    isDarkTheme: false,
                    isExpanded: true,
                    onTap: () {},
                    title: "Signup With mail")
              ],
            )
          ],
        ),
      )),
    );
  }
}
