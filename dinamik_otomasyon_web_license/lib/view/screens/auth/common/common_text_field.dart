import 'package:dinamik_otomasyon_web_license/view/styles/colors.dart';
import 'package:dinamik_otomasyon_web_license/view/styles/styles.dart';
import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  const CommonTextField({
    super.key,
    required this.controller,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Color(MyColors.bg01),
      style: purpleTxtStyle,
      decoration: InputDecoration(
        hintStyle: purpleTxtStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        focusColor: Color(
          MyColors.primary,
        ),
      ),
    );
  }
}
