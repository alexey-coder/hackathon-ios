import 'package:flutter/material.dart';

class OrganizationTypeCell extends StatelessWidget {
  final Image image;
  final void Function()? onPressed;

  const OrganizationTypeCell(
      {required this.image, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
            onTap: () => {onPressed?.call()},
            borderRadius: const BorderRadius.all(Radius.circular(1)),
            child: Container(
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: image.image, fit: BoxFit.fill)))));
  }
}

class FixedOrganizationTypeCell extends StatelessWidget {
  final Image image;
  final double width;
  final void Function()? onPressed;

  const FixedOrganizationTypeCell(
      {required this.image,
      required this.width,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {onPressed?.call()},
        borderRadius: const BorderRadius.all(Radius.circular(1)),
        child: Container(
            height: 120,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(image: image.image, fit: BoxFit.fill))));
  }
}
