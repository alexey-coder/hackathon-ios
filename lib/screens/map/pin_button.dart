import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';

class PinButton extends StatelessWidget {
  final VoidCallback onPressed;

  const PinButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 30,
        height: 30,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                elevation: 0),
            child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: Assets.pin.image().image,
                      fit: BoxFit.cover,
                    )))));
  }
}
