class Task {
  final String content;
  final DateTime startTime;
  final DateTime endTime;
  final bool isChecked;

  Task({
    required this.startTime,
    required this.content,
    required this.endTime,
    this.isChecked = false,
  });

  @override
  String toString() {
    return content +
        'start: ${startTime.toString()} end: ${endTime.toString()}';
  }
}
