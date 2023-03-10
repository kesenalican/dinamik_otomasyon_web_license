import 'package:dinamik_otomasyon_web_license/core/extensions/extensions.dart';
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
    return Container(
      width: context.dynamicWidth * 0.4,
      margin: context.paddingDefault,
      child: TextFormField(
        controller: controller,
        cursorColor: Color(MyColors.bg01),
        style: purpleTxtStyle,
        decoration: InputDecoration(
          hintStyle: purpleTxtStyle,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(MyColors.bg01),
              width: 4,
              style: BorderStyle.solid,
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          focusColor: Color(
            MyColors.primary,
          ),
        ),
      ),
    );
  }
}
