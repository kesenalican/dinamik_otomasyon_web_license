import 'package:dinamik_otomasyon_web_license/core/extensions/extensions.dart';
import 'package:dinamik_otomasyon_web_license/view/styles/colors.dart';
import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? field;
  final IconData? icon;
  final TextInputType? textInputType;
  final bool? isMandatory;
  final String? Function(String?)? validator;
  final bool? readOnly;
  final void Function(String?)? onFieldSubmit;

  CommonTextField(
      {Key? key,
      this.controller,
      this.field,
      this.icon,
      this.textInputType,
      this.readOnly,
      required this.validator,
      this.isMandatory,
      this.onFieldSubmit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.dynamicWidth * 0.02,
          vertical: context.dynamicHeight * 0.007,
        ),
        child: TextFormField(
          validator: validator,
          textInputAction: TextInputAction.next,
          readOnly: readOnly ?? false,
          onFieldSubmitted: onFieldSubmit,
          controller: controller,
          keyboardType: textInputType,
          cursorColor: Color(MyColors.bg01),
          style: TextStyle(
            color: Color(
              MyColors.bg01,
            ),
          ),
          decoration: InputDecoration(
            labelText: field,
            labelStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(
                MyColors.bg01,
              ),
            ),
            prefixIcon: Icon(
              icon,
              color: Color(MyColors.bg01),
            ),
            errorBorder: errorBorder,
            enabledBorder: border,
            focusedBorder: border,
          ),
        ));
  }

  static final errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: Colors.red,
    ),
  );

  static final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: Color(
        MyColors.bg01,
      ),
    ),
  );
}
