import 'package:flutter/cupertino.dart';
import 'models/question.dart';

class QuestionDTO {
  late String title;
  late int correctId;
  late List<QuestionAnswersDTO> answers;

  QuestionDTO({required this.title, required this.correctId, required this.answers});

  factory QuestionDTO.fromJson(Map<String, dynamic> parsedJson) {
    var list = (parsedJson['answers'] ?? []) as List;
    List<QuestionAnswersDTO> dataList = list.map((i) => QuestionAnswersDTO.fromJson(i)).toList();

    return QuestionDTO(title: parsedJson['title'], correctId:  parsedJson['correctId'], answers: dataList);
  }
}

class QuestionAnswersDTO {
  late int id;
  late String value;

  QuestionAnswersDTO({required this.id, required this.value});

  factory QuestionAnswersDTO.fromJson(Map<String, dynamic> parsedJson) {
    return QuestionAnswersDTO(id: parsedJson['id'], value: parsedJson['value']);
  }
}

class LearningProvider extends ChangeNotifier {
  int? selectedAnswer;
  int totalCorrect = 0;

  int currentQuestionIndex = 0;

  late Future<List<QuestionDTO>> futureData = Future.value(
      qestionsjson.map((i) => QuestionDTO.fromJson(i)).toList()
  );
  // late var currentQuestion = futureData[currentQuestionIndex];

  void select(int answer) {
    selectedAnswer = answer;
    notifyListeners();
  }

  void incrementCorrectAnswer() {
    totalCorrect ++;
    notifyListeners();
  }

  void nextTapped() {
    // if (selectedAnswer == currentQuestion.correctId) {
    //   print(" =) ");
    // } else {
    //   print(" =( ");
    // }
    currentQuestionIndex ++;
    notifyListeners();
  }

  Future<List<QuestionDTO>> fetchJson() async {
    return qestionsjson.map((i) => QuestionDTO.fromJson(i)).toList();
  }
}