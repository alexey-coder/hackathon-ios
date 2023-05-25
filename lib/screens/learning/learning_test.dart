import 'package:flutter/material.dart';
import 'package:maps/screens/common_widgets/main_button.dart';
import '../../gen/assets.gen.dart';
import '../../gen/fonts.gen.dart';

class LearningTest extends StatelessWidget {
  const LearningTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar:
                _createAppBar(context: context, progress: 0.5, awardValue: "4", onPressed: () {
                  print("xxxxxxxx");
                }),
            backgroundColor: Colors.white,
            body: SafeArea(
                child: Wrap(
                    runSpacing: 8,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                  const Text("dsdsdsdsdsdfsf",
                      style: TextStyle(
                          color: Color(0xFF121212),
                          fontFamily: FontFamily.deeDee,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                      MainButton(buttonColor: ButtonColors.secondary, text: "text"),
                      MainButton(buttonColor: ButtonColors.secondary, text: "text"),
                      MainButton(buttonColor: ButtonColors.secondary, text: "text"),
                      MainButton(buttonColor: ButtonColors.secondary, text: "text"),
                    ]))));
  }
}

Container _createProgress({required double progress}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    width: 200,
    height: 20,
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: LinearProgressIndicator(
        value: progress,
        valueColor: const AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
        backgroundColor: const Color(0xffD6D6D6),
      ),
    ),
  );
}

AppBar _createAppBar(
    {required BuildContext context,
    required double progress,
    required String awardValue,
    required void Function()? onPressed}) {
  return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(color: const Color(0xFFEDEDED), height: 1.0)),
      centerTitle: true,
      title: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Spacer(),
        _createProgress(progress: progress),
        const Spacer(),
        Assets.award.image(width: 24, height: 24),
        Text(awardValue,
            style: const TextStyle(
                color: Color.fromRGBO(252, 204, 10, 1),
                fontFamily: FontFamily.deeDee,
                fontSize: 16,
                fontWeight: FontWeight.w700)),
        const Spacer(),
      ]),
      leading: IconButton(
          icon:
              Image(height: 24, width: 24, image: Assets.xClose.image().image),
          onPressed: onPressed));
}
