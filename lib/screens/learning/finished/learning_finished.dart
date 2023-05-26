import 'package:flutter/material.dart';
import '../../common_widgets/main_button.dart';

class LearningFinished extends StatelessWidget {
  const LearningFinished({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const Spacer(),
                  // Assets.wordOfADay.image(fit: BoxFit.fill)
                  MainButton(
                      buttonColor: ButtonColors.mainColor,
                      text: "Далее",
                      press: () {
                        //
                      }),
                  const SizedBox(height: 16)
                ])
            )
        )
      )
    );
  }
}
