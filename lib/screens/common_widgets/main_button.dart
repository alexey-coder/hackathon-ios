import 'package:flutter/material.dart';

enum ButtonColors { mainColor, secondary, pale, alert }

extension on ButtonColors {
  Color get getColor {
    switch (this) {
      case ButtonColors.mainColor:
        return Color(0xFFAFCC46);
    case ButtonColors.secondary:
        return Color.fromRGBO(13, 16, 25, 0.06);
      case ButtonColors.pale:
        return Color.fromRGBO(13, 16, 25, 0.03);
      case ButtonColors.alert:
        return Color.fromRGBO(204, 70, 70, 1);
    }
  }
}

class MainButton extends StatelessWidget {
  MainButton({
    Key? key,
    required this.buttonColor,
    this.borderColor,
    required this.text,
    required this.activeColor,
    required this.activeGesture,
    this.width,
    this.press,
  }) : super(key: key);

  final String text;
  final Function? press;
  final ButtonColors buttonColor;
  Color? borderColor;
  final double? width;
  bool activeColor = true;
  bool activeGesture = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.red,
            backgroundColor: activeColor ? buttonColor.getColor : buttonColor.getColor.withAlpha(30),
            shape: borderColor != null ? _getBorder(borderColor!) : null),
        onPressed: activeGesture ? press as void Function()? : null,
        child: Text(
          text ?? "",
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  RoundedRectangleBorder _getBorder(Color color) {
    return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), side: BorderSide(color: color));
  }
}
