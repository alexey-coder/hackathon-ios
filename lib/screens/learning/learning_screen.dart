import 'package:flutter/material.dart';
import 'package:maps/screens/learning/learning_provider.dart';
import 'package:maps/screens/learning/learning_test.dart';
import 'package:provider/provider.dart';
import '../../gen/assets.gen.dart';
import '../../gen/fonts.gen.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final provider = context.watch<LearningProvider>();

    return MaterialApp(
        home: Scaffold(
            appBar: _createAppBar(context: context, title: "Маршрут обучения", awardValue: "16"),
            backgroundColor: Colors.white,
            body: SafeArea(
                child: ListView(
                    padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  checkImage(context)
                                ]),
                           const SizedBox(height: 8),
                           Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 checkImage(context),
                                 const SizedBox(width: 82)
                           ]),
                            const SizedBox(height: 8),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  checkImage(context),
                                  const SizedBox(width: 164)
                                ]),
                            const SizedBox(height: 8),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  checkImage(context),
                                  const SizedBox(width: 82)
                                ]),
                            const SizedBox(height: 8),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  checkImage(context)
                                ]),
                          ]
              )
            ]
        )
    ))
    );
  }

  GestureDetector checkImage(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const LearningTest(),
              fullscreenDialog: true
          ),
        );
      },
        child:
        SizedBox.fromSize(
        size: const Size(82, 54), // Image radius
        child: Assets.learnCheck.image(
            fit: BoxFit.scaleDown
        )
    )
    );
  }

  AppBar _createAppBar({
    required BuildContext context,
    required String title,
    required String awardValue
  }) {
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Container(color: const Color(0xFFEDEDED), height: 1.0)),
        centerTitle: true,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
                title,
                style: const TextStyle(
                    color: Color(0xFF121212),
                    fontFamily: FontFamily.deeDee,
                    fontSize: 20,
                    fontWeight: FontWeight.w700)),
            const Spacer(),
            Assets.award.image(width: 24, height: 24),
            Text(
                awardValue,
                style: const TextStyle(
                color: Color.fromRGBO(252, 204, 10, 1),
                fontFamily: FontFamily.deeDee,
                fontSize: 16,
                fontWeight: FontWeight.w700)
            )
          ]
        ));
  }
}
