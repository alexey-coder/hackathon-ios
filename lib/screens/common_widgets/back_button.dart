import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';

class CommonBackButton extends StatelessWidget {
  final void Function()? onPressed;
  const CommonBackButton(this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Image(
            height: 24, width: 24, image: Assets.backButton.image().image),
        onPressed: onPressed);
  }
}
