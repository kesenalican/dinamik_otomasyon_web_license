import 'package:dinamik_otomasyon_web_license/core/constants/constants.dart';
import 'package:dinamik_otomasyon_web_license/view/common/common_appbar.dart';
import 'package:flutter/material.dart';

class LicenseRequest extends StatelessWidget {
  const LicenseRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CommonAppbar(header: Constants.lisansTalepleri),
      body: Center(
        child: Text(Constants.lisansTalepleri),
      ),
    );
  }
}
