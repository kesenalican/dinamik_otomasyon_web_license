import 'package:dinamik_otomasyon_web_license/core/constants/constants.dart';
import 'package:dinamik_otomasyon_web_license/core/extensions/extensions.dart';
import 'package:dinamik_otomasyon_web_license/view/common/common_appbar.dart';
import 'package:dinamik_otomasyon_web_license/view/common/common_button.dart';
import 'package:dinamik_otomasyon_web_license/view/screens/auth/common/common_text_field.dart';
import 'package:dinamik_otomasyon_web_license/view/screens/home/view/home_page.dart';
import 'package:dinamik_otomasyon_web_license/view/styles/colors.dart';
import 'package:dinamik_otomasyon_web_license/view/styles/styles.dart';
import 'package:flutter/material.dart';

class AddLicense extends StatefulWidget {
  const AddLicense({super.key});

  @override
  State<AddLicense> createState() => _AddLicenseState();
}

class _AddLicenseState extends State<AddLicense> {
  TextEditingController licenseIdController = TextEditingController();
  TextEditingController cariController = TextEditingController();
  TextEditingController subeController = TextEditingController();
  TextEditingController makineKoduController = TextEditingController();
  TextEditingController tarihController = TextEditingController();
  TextEditingController lisansKoduController = TextEditingController();
  TextEditingController modulKoduController = TextEditingController();
  TextEditingController aciklamaController = TextEditingController();
  TextEditingController vknController = TextEditingController();

  @override
  void initState() {
    super.initState();
    licenseIdController = TextEditingController();
    cariController = TextEditingController();
    subeController = TextEditingController();
    makineKoduController = TextEditingController();
    tarihController = TextEditingController();
    lisansKoduController = TextEditingController();
    modulKoduController = TextEditingController();
    aciklamaController = TextEditingController();
    vknController = TextEditingController();
  }

  @override
  void dispose() {
    licenseIdController.dispose();
    cariController.dispose();
    subeController.dispose();
    makineKoduController.dispose();
    tarihController.dispose();
    lisansKoduController.dispose();
    modulKoduController.dispose();
    aciklamaController.dispose();
    vknController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const CommonAppbar(header: Constants.lisansVermeEkrani),
      body: SingleChildScrollView(
        child: Form(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: context.dynamicHeight * 0.03,
                ),
                CommonTextField(
                    controller: licenseIdController, hint: Constants.lisansId),
                CommonTextField(
                    controller: licenseIdController, hint: Constants.cari),
                CommonTextField(
                    controller: licenseIdController,
                    hint: Constants.makineKodu),
                CommonTextField(
                    controller: licenseIdController, hint: Constants.tarih),
                CommonTextField(
                    controller: licenseIdController,
                    hint: Constants.lisansKodu),
                CommonTextField(
                    controller: licenseIdController, hint: Constants.aciklama),
                CommonTextField(
                    controller: licenseIdController, hint: Constants.vkn),
                CommonButton(
                  onTap: () {},
                  text: 'Lisans Ver',
                  backgroundColor: Color(MyColors.bg01),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
