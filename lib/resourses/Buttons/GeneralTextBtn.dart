import 'package:chat_application/resourses/components/utils/App_colors.dart';
import 'package:chat_application/resourses/components/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralTextButton extends StatelessWidget {
  final Function onTap;
  final String title;
  final Color btnColor;
  final bool isDarkTheme;
  final bool isExpanded;
  final bool showBorder;
  GeneralTextButton(
      {super.key,
      required this.onTap,
      required this.title,
      this.isDarkTheme = true,
      this.isExpanded = false,
      this.showBorder = false,
      this.btnColor = const Color(0xfffffffff)});

  final font = GetTextThemes();

  @override
  Widget build(BuildContext context) {
    final TextBtn = SizedBox(
      child: TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 12.w),
              backgroundColor: btnColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  side: showBorder
                      ? BorderSide(width: 1, color: AppColors().henna)
                      : BorderSide.none)),
          onPressed: () {
            onTap();
          },
          child: Text(title,
              style: font.fs16_medium
                  .copyWith(color: isDarkTheme ? Colors.white : Colors.black))),
    );
    return isExpanded ? Expanded(child: TextBtn) : TextBtn;
  }
}
