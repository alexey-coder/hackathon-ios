import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class BackButtonWithTitle extends StatelessWidget {

  BackButtonWithTitle({
    Key? key,
    required this.title,
    required this.backTap
  }) : super(key: key);

  String title;
  GestureTapCallback backTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 57,
        color: Colors.white,
        child: GestureDetector(
            onTap: backTap,
            child: Row(children: [
              SizedBox(
                  width: 24,
                  height: 24,
                  child: Image(
                      image: Assets.chevronLeft.image().image,
                      fit: BoxFit.fitWidth
                  )
              ),
              Text(
                  title,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold)
              ),
            ]
            )
        )
    );
  }
}
