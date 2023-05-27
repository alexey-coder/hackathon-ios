import 'package:flutter/material.dart';
import 'package:maps/screens/common_widgets/main_button.dart';
import 'package:maps/screens/learning/test/learning_test_provider.dart';
import 'package:provider/provider.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../common_widgets/progress.dart';

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
      Provider.of<LearningTestProvider>(context, listen: false).getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LearningTestProvider>(builder: (context, provider, widget) {
      if (provider.questions.isEmpty) {
        return const CircularProgressIndicator();
      } else {
        return _mainWidget(provider, context);
      }
    });
  }

  MaterialApp _mainWidget(LearningTestProvider provider, BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: _createAppBar(
                context: context,
                progress: provider.finished ? 1 : provider.progress(),
                awardValue: provider.totalCorrect,
                onPressed: () {
                  Navigator.pop(context);
                }),
            backgroundColor: Colors.white,
            body: SafeArea(
                child: Padding(
                    padding: const EdgeInsets.all(24),
                    child:
                    provider.finished ? _finishedWidget(provider, context) : _testWidget(provider),
                ))));
  }
}

Widget _finishedWidget(LearningTestProvider provider, BuildContext context) {
  return Column(
    children: [
      const Spacer(),
      Assets.finished.image(
        fit: BoxFit.fitWidth,
        width: 300,
      ),
      const Spacer(),
      MainButton(
          buttonColor: ButtonColors.secondary,
          text: "Вернуться к тестам",
          activeColor: true,
          activeGesture: true,
          press: () {
            Navigator.pop(context);
          }),
      const SizedBox(height: 16),
      MainButton(
          buttonColor: ButtonColors.mainColor,
          text: "Следующий",
          activeColor: true,
          activeGesture: true,
          press: () {
            Navigator.pop(context);
          }),
      const SizedBox(height: 16)
    ]
  );
}

Widget _testWidget(LearningTestProvider provider) {
  var questionIndex = provider.currentQuestionIndex;

  return Column(children: [
    const SizedBox(height: 24),
    Text(provider.questions[questionIndex].question,
        style: const TextStyle(
            color: Color(0xFF121212),
            fontFamily: FontFamily.deeDee,
            fontSize: 20,
            fontWeight: FontWeight.w700)),
    const Spacer(),
    Wrap(
        runSpacing: 8,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: List.generate(
            provider.questions[questionIndex].answers.length,
                (index) {
              return MainButton(
                buttonColor: ButtonColors.secondary,
                text: provider.questions[questionIndex].answers[index].value,
                activeColor: provider.selectedAnswer == index,
                activeGesture: true,
                press: () {
                  provider.select(provider
                      .questions[questionIndex]
                      .answers[index]
                      .id);
                },
              );
            })),
    const Spacer(),
    MainButton(
        buttonColor: ButtonColors.mainColor,
        text: "Далее",
        activeColor: provider.selectedAnswer != null,
        activeGesture: provider.selectedAnswer != null,
        press: () {
          provider.nextTapped();
        }),
    const SizedBox(height: 16)
  ]);
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
        HorizontalProgress(progress: progress, width: 200, height: 16),
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
