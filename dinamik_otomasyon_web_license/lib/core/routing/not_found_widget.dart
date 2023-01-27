import 'package:dinamik_otomasyon_web_license/view/styles/styles.dart';
import 'package:flutter/material.dart';

class NotFoundNavigationWidget extends StatelessWidget {
  const NotFoundNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Sayfa Bulunamadı',
          style: purpleBoldTxtStyle,
        ),
      ),
    );
  }
}
