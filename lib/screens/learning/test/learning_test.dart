import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/screens/common_widgets/main_button.dart';
import 'package:maps/screens/learning/test/learning_test_provider.dart';
import 'package:provider/provider.dart';

class LearningTest extends StatelessWidget {
  const LearningTest({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<LearningTestProvider>();
    return Scaffold(
        appBar: _createAppBar(
            context: context,
            progress: provider.finished ? 1 : provider.progress(),
            awardValue: provider.totalCorrect,
            onPressed: () => {Navigator.pop(context)}),
        backgroundColor: Colors.white,
        body: provider.questions.isEmpty
            ? const CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.all(24),
                child: provider.finished
                    ? _finishedWidget(provider, context)
                    : _testWidget(provider)));
  }
}

Widget _finishedWidget(LearningTestProvider provider, BuildContext context) {
  return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
    const Spacer(),
    Assets.finished.image(
      fit: BoxFit.fitWidth,
      width: 300,
    ),
    const Spacer(),
    MainButton(
        backgroundColor: const Color(0xFF0D1019).withAlpha(20),
        text: "Вернуться к тестам",
        onPressed: () => {Navigator.pop(context)}),
    const SizedBox(height: 16),
    MainButton(
        backgroundColor: const Color(0xFFAFCC46),
        text: "Следующий",
        onPressed: () => {Navigator.pop(context)}),
    const SizedBox(height: 16)
  ]);
}

Widget _testWidget(LearningTestProvider provider) {
  var questionIndex = provider.currentQuestionIndex;

  return Container(
      alignment: Alignment.center,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const SizedBox(height: 24),
        Text(provider.questions[questionIndex].question,
            style: const TextStyle(
                color: Color(0xFF121212),
                fontSize: 20,
                fontWeight: FontWeight.w700)),
        const Spacer(),
        ...List.generate(provider.questions[questionIndex].answers.length,
            (index) {
          return Padding(
              padding: const EdgeInsets.only(top: 8),
              child: MainButton(
                  backgroundColor: provider.selectedAnswer != null &&
                          index == provider.selectedAnswer! - 1
                      ? const Color(0xFF0D1019).withAlpha(40)
                      : const Color(0xFF0D1019).withAlpha(10),
                  text: provider.questions[questionIndex].answers[index].value,
                  onPressed: () {
                    provider.select(
                        provider.questions[questionIndex].answers[index].id);
                  }));
        }),
        const Spacer(),
        MainButton(
            backgroundColor: provider.selectedAnswer != null
                ? const Color(0xFFAFCC46)
                : const Color(0xFFAFCC46).withOpacity(0.4),
            text: "Далее",
            onPressed: provider.selectedAnswer != null
                ? () => {provider.nextTapped()}
                : null),
        const SizedBox(height: 16)
      ]));
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
                fontSize: 16,
                fontWeight: FontWeight.w700)),
        const Spacer(),
      ]),
      leading: IconButton(
          icon:
              Image(height: 24, width: 24, image: Assets.xClose.image().image),
          onPressed: onPressed));
}
