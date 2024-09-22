import 'package:flutter/material.dart';
import 'package:task_app/models/todo.dart';
import 'package:task_app/task_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _order = "asc";
  final _todoList = [
    const Todo(text: "Create App Flutter"),
    const Todo(text: "Learn Flutter"),
    const Todo(text: "Sleep"),
    const Todo(text: "Breakfast"),
    const Todo(text: "Go to a mall"),
  ];
  List<Todo> get _orderItem {
    final sortedTodo = List.of(_todoList);
    sortedTodo.sort((a, b) {
      final bComesAfterA = a.text.compareTo(b.text);

      return _order == "asc" ? bComesAfterA : -bComesAfterA;
    });

    return sortedTodo;
  }

  void _changeOrder() {
    setState(() {
      _order = _order == "asc" ? "desc" : "asc";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton.icon(
            onPressed: _changeOrder,
            icon: Icon(
                _order == "asc" ? Icons.arrow_downward : Icons.arrow_upward),
            label:
                Text("Sort ${_order == "asc" ? "Descending" : "Ascending"}"),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              for (final todo in _orderItem)
                TaskItem(
                  key: ValueKey(todo.text),
                  text: todo.text
                )
            ],
          )
        )
      ],
    );
  }
}
