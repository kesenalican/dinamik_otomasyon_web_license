import 'package:auto_size_text/auto_size_text.dart';
import 'package:dinamik_otomasyon_web_license/core/constants/constants.dart';
import 'package:dinamik_otomasyon_web_license/core/extensions/extensions.dart';
import 'package:dinamik_otomasyon_web_license/view/styles/colors.dart';
import 'package:dinamik_otomasyon_web_license/view/styles/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: context.dynamicHeight * 0.3,
          childAspectRatio: 1,
          crossAxisSpacing: context.dynamicHeight * 0.01,
          mainAxisSpacing: context.dynamicHeight * 0.01,
        ),
        itemCount: Constants.menuItem.length,
        itemBuilder: (context, index) {
          return Container(
            margin: context.paddingDefault,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(MyColors.bg01),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.settings,
                  size: 50,
                  color: Colors.white,
                ),
                SizedBox(
                  height: context.dynamicHeight * 0.05,
                ),
                AutoSizeText(
                  Constants.menuItem[index],
                  style: whiteBoldTxtStyle,
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 15,
        backgroundColor: Color(MyColors.bg01),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
