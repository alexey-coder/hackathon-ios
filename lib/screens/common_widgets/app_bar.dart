import 'package:flutter/material.dart';
import 'package:maps/gen/fonts.gen.dart';
import 'package:maps/screens/common_widgets/back_button.dart';

AppBar createAppBar({required BuildContext context, required String title}) {
  return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(color: const Color(0xFFEDEDED), height: 1.0)),
      centerTitle: false,
      title: Text(title,
          style: const TextStyle(
              color: Color(0xFF121212),
              fontFamily: FontFamily.deeDee,
              fontSize: 20,
              fontWeight: FontWeight.w700)),
      leading: CommonBackButton(() => Navigator.of(context).pop()));
}
