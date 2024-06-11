import 'package:chat_application/View/Onboarding/login_method_tile.dart';
import 'package:chat_application/data/app_data.dart';
import 'package:chat_application/resourses/Buttons/GeneralTextBtn.dart';
import 'package:chat_application/resourses/components/MainTextfilled.dart';
import 'package:chat_application/resourses/components/utils/App_colors.dart';
import 'package:chat_application/resourses/components/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SigninView extends StatelessWidget {
  SigninView({super.key});
  final font = GetTextThemes();
  final color = AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          children: [
            Text(
              "Log in to chatbox",
              style: font.fs16_bold,
            ),
            Gap(20.h),
            Text(
              "Welcome back! Sing in using your social accountor email to continue us",
              style: font.fs12_regular,
            ),
            Gap(20.h),
            GridView.builder(
              shrinkWrap: true,
              itemCount: Localdata.loginbtn.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 40, crossAxisCount: 3),
              itemBuilder: (context, index) {
                return LoginTile(
                    // imagecolor: Colors.black,
                    Bordercolor: color.blackColor,
                    image: Localdata.loginbtn[index]);
              },
            ),
            Gap(30.h),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: color.dark_grey,
                  ),
                ),
                const Gap(10),
                Text(
                  "OR",
                  style: font.fs14_medium.copyWith(color: color.dark_grey),
                ),
                const Gap(10),
                Expanded(
                  child: Divider(
                    color: color.dark_grey,
                  ),
                )
              ],
            ),
            Gap(20.h),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Your email",
                  style: font.fs14_medium.copyWith(color: color.Primary),
                )),
            //textfilled //********** */
            MainTextfilled(hide: false),
            Gap(20.h),
            Align(
                alignment: Alignment.topLeft,
                child: Text("Password",
                    style: font.fs14_medium.copyWith(color: color.Primary))),
            MainTextfilled(hide: true),
            Gap(50.h),
            Row(
              children: [
                GeneralTextButton(
                    btnColor: color.Primary,
                    isExpanded: true,
                    onTap: () {},
                    title: "Log in"),
              ],
            ),
            TextButton(onPressed: () {}, child: const Text("Forgot Password?"))
          ],
        ),
      )),
    );
  }
}
