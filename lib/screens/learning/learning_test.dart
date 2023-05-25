import 'package:flutter/material.dart';
import 'package:maps/screens/common_widgets/main_button.dart';
import 'package:maps/screens/learning/learning_provider.dart';
import 'package:provider/provider.dart';
import '../../gen/assets.gen.dart';
import '../../gen/fonts.gen.dart';

class LearningTest extends StatefulWidget {
  const LearningTest({Key? key}) : super(key: key);

  @override
  State<LearningTest> createState() => _LearningTestState();
}

class _LearningTestState extends State<LearningTest> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<LearningProvider>(context, listen: true).getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = context.read<LearningProvider>();

    return MaterialApp(
        home: Scaffold(
            appBar: _createAppBar(
                context: context,
                progress: 0.5,
                awardValue: provider.totalCorrect,
                onPressed: () {
                  Navigator.pop(context);
                }),
            backgroundColor: Colors.white,
            body: SafeArea(
                child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(children: [
                      const SizedBox(height: 24),
                      const Text("title",
                          style: TextStyle(
                              color: Color(0xFF121212),
                              fontFamily: FontFamily.deeDee,
                              fontSize: 20,
                              fontWeight: FontWeight.w700)),
                      const Spacer(),
                      Consumer<LearningProvider>(
                          builder: (context, provider, widget) {
                        if (provider == null || provider.questions.isEmpty) {
                          return const CircularProgressIndicator();
                        } else {
                          return Wrap(
                              runSpacing: 8,
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: List.generate(provider.questions[0].answers.length,
                                  (index) {
                                return MainButton(
                                  buttonColor: ButtonColors.secondary,
                                  text: provider.questions[0].answers[index].value,
                                  press: () {
                                    provider.select(provider.questions[0].answers[index].id);
                                  },
                                );
                              }));
                        }
                      }),
                      const Spacer(),
                      MainButton(
                          buttonColor: ButtonColors.mainColor,
                          text: "Далее",
                          press: () {
                            provider.nextTapped();
                          }),
                      const SizedBox(height: 16)
                    ])))));
  }
}

Container _createProgress({required double progress}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    width: 200,
    height: 16,
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: LinearProgressIndicator(
        value: progress,
        valueColor: const AlwaysStoppedAnimation<Color>(
            Color.fromRGBO(116, 176, 118, 1)),
        backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      ),
    ),
  );
}

AppBar _createAppBar(
    {required BuildContext context,
    required double progress,
    required int awardValue,
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
        Text(awardValue.toString(),
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
