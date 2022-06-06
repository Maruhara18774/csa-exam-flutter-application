class Question{
  int? id;
  String? test;
  int? order;
  String? question;
  String? option1;
  String? option2;
  String? option3;
  String? option4;
  String? option5;
  String? option6;
  String? answer;

  Question({
    this.id,
    this.test,
    this.order,
    this.question,
    this.option1,
    this.option2,
    this.option3,
    this.option4,
    this.option5,
    this.option6,
    this.answer});

  factory Question.fromJson(dynamic json) {
    return Question(
        id: json['id'] as int,
        test: json['test'] as String,
        order: json['order'] as int,
        question: json['question'] as String,
        option1: json['option1'] as String,
        option2: json['option2'] as String,
        option3: json['option3'] as String,
        option4: json['option4'] as String,
        option5: json['option5'] as String,
        option6: json['option6'] as String,
        answer: json['answer'] as String
    );
  }
}