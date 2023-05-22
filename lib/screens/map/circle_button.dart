import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Size size;
  final Image image;

  const CircleButton(
      {Key? key,
      required this.image,
      required this.size,
      required this.onPressed})
      : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size.width,
        height: size.height,
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
                      image: image.image,
                      fit: BoxFit.cover,
                    )))));
  }
}

class CrossIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CrossIconButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          Icons.clear,
          size: 24,
          color: Colors.black,
        ),
      ),
    );
  }
}
