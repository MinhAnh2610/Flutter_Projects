class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;
  
  List<String> getShuffuledAnswers() {
    final shuffuledList = List.of(answers);
    shuffuledList.shuffle();
    return shuffuledList;
  }
}