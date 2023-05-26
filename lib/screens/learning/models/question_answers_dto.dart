class QuestionAnswersDTO {
  late int id;
  late String value;

  QuestionAnswersDTO({required this.id, required this.value});

  factory QuestionAnswersDTO.fromJson(Map<String, dynamic> parsedJson) {
    return QuestionAnswersDTO(id: parsedJson['id'], value: parsedJson['value']);
  }
}