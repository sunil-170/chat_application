import 'package:chat_application/SplashView.dart';
import 'package:chat_application/resourses/components/helper/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'ViewModelView/language_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(AppConfig.screenWidth, AppConfig.screenHeight),
      child: GetMaterialApp(
        translations: languages(),
        locale: const Locale("en", "US"),
        fallbackLocale: const Locale("en", "US"),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashView(),
      ),
    );
  }
}
