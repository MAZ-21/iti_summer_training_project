import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/core/configs/assets/app_icon.dart';
import 'package:spotify_app/core/configs/assets/styles.dart';
import 'package:spotify_app/core/configs/theme/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.text,
    this.icon,
  });
  final TextEditingController controller;
  final String text;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.text,
      cursorColor: AppColor.primary,
      decoration: InputDecoration(
        hintText: text,
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      )
    );
  }
}
