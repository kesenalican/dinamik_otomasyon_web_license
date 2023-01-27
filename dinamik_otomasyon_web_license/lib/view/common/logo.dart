import 'package:dinamik_otomasyon_web_license/core/constants/constants.dart';
import 'package:dinamik_otomasyon_web_license/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: const AssetImage(Constants.logoPath),
      width: context.dynamicHeight * 0.2,
      height: context.dynamicWidth * 0.2,
    );
  }
}
