enum Priority {urgent, normal, low}

class Todo {
  const Todo({
    required this.text,
    required this.priority
  });
  final String text;
  final Priority priority;
}