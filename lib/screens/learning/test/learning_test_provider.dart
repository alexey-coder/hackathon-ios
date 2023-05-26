import 'package:flutter/cupertino.dart';
import '../models/question.dart';
import '../models/question_dto.dart';

class LearningTestProvider extends ChangeNotifier {
  int? selectedAnswer;
  int totalCorrect = 0;
  int currentQuestionIndex = 0;
  bool finished = false;

  double progress() {
    var totalQuestions = questions.length.toDouble();
    var doneQuestions = currentQuestionIndex;
    var percent = 100 * doneQuestions / totalQuestions;
    return percent / 100;
  }

  List<QuestionDTO> questions = [];

  Future<void> getData() async {
    questions = qestionsjson.map((i) => QuestionDTO.fromJson(i)).toList();
    notifyListeners();
  }

  void select(int answer) {
    print("answer = $answer");
    selectedAnswer = answer;
    notifyListeners();
  }

  void nextTapped() {
    if (selectedAnswer == questions[currentQuestionIndex].correctId) {
      print(" =) ");
    } else {
      print(" =( ");
    }

    if (currentQuestionIndex + 1 == questions.length) {
      finished = true;
    } else {
      currentQuestionIndex ++;
      selectedAnswer = null;
    }
    notifyListeners();
  }
}