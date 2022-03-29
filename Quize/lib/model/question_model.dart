class QuestionModel {
  int? id, answer;
  String? question, late;
  List<String>? options;
  QuestionModel(
      {required this.id,
      required this.answer,
      required this.question,
      required this.options});
}
