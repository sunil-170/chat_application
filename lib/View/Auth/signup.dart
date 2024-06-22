import 'package:chat_application/View/Onboarding/login_method_tile.dart';
import 'package:chat_application/data/app_data.dart';
import 'package:chat_application/resourses/Buttons/GeneralTextBtn.dart';
import 'package:chat_application/resourses/components/MainTextfilled.dart';
import 'package:chat_application/resourses/components/utils/App_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        children: [
          const Text("Sign up with Email"),
          const Text(
              "Get chatting with friends and family today by signing up for your chat app!"),
          GridView.builder(
            shrinkWrap: true,
            itemCount: Localdata.loginbtn.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 50, crossAxisCount: 3),
            itemBuilder: (context, index) {
              return LoginTile(
                  // imagecolor: Colors.black,
                  Bordercolor: Colors.black,
                  image: Localdata.loginbtn[index]);
            },
          ),
          Gap(30.h),
          const Align(alignment: Alignment.topLeft, child: Text("Your name")),
          MainTextfilled(hide: false),
          const Align(alignment: Alignment.topLeft, child: Text("Your email")),
          MainTextfilled(hide: false),
          const Align(alignment: Alignment.topLeft, child: Text("Password")),
          MainTextfilled(hide: true),
          const Align(
              alignment: Alignment.topLeft, child: Text("Confirm Password")),
          MainTextfilled(hide: true),
          Row(
            children: [
              GeneralTextButton(
                  btnColor: AppColors().Primary,
                  isExpanded: true,
                  onTap: () {},
                  title: "Create an account"),
            ],
          ),
          ListTile(
            title: Text("msg".tr),
            subtitle: Text("name".tr),
          ),
          TextButton(
              onPressed: () {
                Get.updateLocale(const Locale("en_US"));
              },
              child: const Text("english")),
          TextButton(
              onPressed: () {
                Get.updateLocale(const Locale("ur_PK"));
              },
              child: const Text("urdu")),
        ],
      )),
    );
  }
}
