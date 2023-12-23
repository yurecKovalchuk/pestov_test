class TestQuestionDTO {
  final int id;
  final String question;
  final int? correctAnswerPosition;
  final List<Map<String, dynamic>> answers;

  TestQuestionDTO({
    required this.id,
    required this.question,
    required this.correctAnswerPosition,
    required this.answers,
  });

  factory TestQuestionDTO.fromJson(Map<String, dynamic> json) {
    return TestQuestionDTO(
      id: json['id'],
      question: json['question'],
      correctAnswerPosition: json['correctAnswerPosition'],
      answers: List<Map<String, dynamic>>.from(json['answers']),
    );
  }
}
