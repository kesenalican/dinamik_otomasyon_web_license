// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:dinamik_otomasyon_web_license/core/constants/constants.dart';
import 'package:dinamik_otomasyon_web_license/core/extensions/extensions.dart';
import 'package:dinamik_otomasyon_web_license/view/styles/colors.dart';
import 'package:dinamik_otomasyon_web_license/view/styles/styles.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color backgroundColor;
  const CommonButton({
    required this.onTap,
    required this.text,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
            horizontal: context.dynamicWidth * 0.080,
            vertical: context.dynamicHeight * 0.02),
        shape: const StadiumBorder(),
        backgroundColor: backgroundColor,
        elevation: 8,
        shadowColor: Colors.black87,
      ),
      child: Text(
        text,
        style: whiteTxtStyle,
      ),
    );
  }
}
