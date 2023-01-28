import 'package:dinamik_otomasyon_web_license/core/constants/constants.dart';
import 'package:dinamik_otomasyon_web_license/view/common/common_appbar.dart';
import 'package:flutter/material.dart';

class ActiveLicenses extends StatelessWidget {
  const ActiveLicenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CommonAppbar(header: Constants.aktifLisanslar),
      body: Center(
        child: Text(Constants.aktifLisanslar),
      ),
    );
  }
}
