class Task {
  final String content;
  final DateTime time;
  final bool isChecked;

  Task({
    required this.time,
    required this.content,
    this.isChecked = false,
  });

  @override
  String toString() {
    
    return content;
  }
}
