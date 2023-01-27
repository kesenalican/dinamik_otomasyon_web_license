import 'package:dinamik_otomasyon_web_license/core/constants/constants.dart';
import 'package:dinamik_otomasyon_web_license/core/constants/route_constants.dart';
import 'package:dinamik_otomasyon_web_license/core/extensions/extensions.dart';
import 'package:dinamik_otomasyon_web_license/view/common/logo.dart';
import 'package:dinamik_otomasyon_web_license/view/screens/auth/common/common_text_field.dart';
import 'package:dinamik_otomasyon_web_license/view/screens/home/view/home_page.dart';
import 'package:dinamik_otomasyon_web_license/view/styles/colors.dart';
import 'package:dinamik_otomasyon_web_license/view/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');
    final formKey = useMemoized(() => GlobalKey<FormState>());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        height: context.dynamicHeight,
        width: context.dynamicWidth,
        color: Color(MyColors.bg01),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: context.dynamicHeight * 0.1,
              ),
              //* LOGO
              const Logo(),
              //* USERNAME TEXTFIELD
              Padding(
                padding: context.paddingHorizontal,
                child: CommonTextField(
                  controller: usernameController,
                  hint: Constants.userName,
                ),
              ),
              SizedBox(
                height: context.dynamicHeight * 0.01,
              ),
              //*PASSWORD TEXTFIELD
              Padding(
                padding: context.paddingHorizontal,
                child: CommonTextField(
                  controller: passwordController,
                  hint: Constants.password,
                ),
              ),
              SizedBox(
                height: context.dynamicHeight * 0.01,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: context.dynamicWidth * 0.080,
                      vertical: context.dynamicHeight * 0.02),
                  shape: const StadiumBorder(),
                  backgroundColor: Color(MyColors.header01),
                  elevation: 8,
                  shadowColor: Colors.black87,
                ),
                child: Text(
                  Constants.login,
                  style: whiteTxtStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
