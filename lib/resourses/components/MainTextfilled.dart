import 'package:chat_application/resourses/components/utils/App_colors.dart';
import 'package:chat_application/resourses/components/utils/textstyle.dart';
import 'package:flutter/material.dart';

class MainTextfilled extends StatelessWidget {
  String? hintext;
  IconData? icon, icon2;
  bool hide, readonly;
  Function(String?)? validator;
  TextEditingController? controller;
  TextInputType? keyboardType;
  int? maxLength;
  MainTextfilled(
      {super.key,
      this.maxLength,
      this.icon,
      this.icon2,
      this.hintext,
      required this.hide,
      this.controller,
      this.validator,
      this.keyboardType,
      this.readonly = false});
  final font = GetTextThemes();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: font.fs14_regular,
      maxLength: maxLength,
      keyboardType: keyboardType,
      readOnly: readonly,
      obscureText: hide,
      decoration: InputDecoration(
          counterText: "",
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors().dark_grey)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors().dark_grey)),
          prefixIcon: icon == null
              ? null
              : Icon(
                  icon,
                  color: AppColors().dark_grey,
                ),
          suffixIcon: Icon(
            icon2,
            color: AppColors().dark_grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintext,
          hintStyle: font.fs14_regular.copyWith(color: AppColors().dark_grey)),
      controller: controller,
      validator: validator == null ? null : (value) => validator!(value),
    );
  }
}
