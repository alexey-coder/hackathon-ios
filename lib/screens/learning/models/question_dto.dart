import 'package:maps/screens/learning/models/question_answers_dto.dart';

class QuestionDTO {
  late String question;
  late int correctId;
  late String description;
  late List<QuestionAnswersDTO> answers;

  QuestionDTO({
    required this.question,
    required this.correctId,
    required this.description,
    required this.answers
  });

  factory QuestionDTO.fromJson(Map<String, dynamic> parsedJson) {
    var list = (parsedJson['answers'] ?? []) as List;
    List<QuestionAnswersDTO> dataList = list.map((i) => QuestionAnswersDTO.fromJson(i)).toList();

    return QuestionDTO(
        question: parsedJson['question'],
        correctId: parsedJson['correctId'],
        description: parsedJson['description'],
        answers: dataList
    );
  }
}