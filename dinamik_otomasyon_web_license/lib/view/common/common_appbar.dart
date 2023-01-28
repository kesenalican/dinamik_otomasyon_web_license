import 'package:dinamik_otomasyon_web_license/view/styles/colors.dart';
import 'package:dinamik_otomasyon_web_license/view/styles/styles.dart';
import 'package:flutter/material.dart';

class CommonAppbar extends StatefulWidget implements PreferredSizeWidget {
  final String header;
  const CommonAppbar({super.key, required this.header});

  @override
  State<CommonAppbar> createState() => _CommonAppbarState();
  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _CommonAppbarState extends State<CommonAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.header,
        style: whiteBoldTxtStyle,
      ),
      backgroundColor: Color(
        MyColors.bg01,
      ),
      leading: BackButton(
        color: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
