import 'package:flutter/material.dart';

class TaskItem extends StatefulWidget
{
  const TaskItem({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem>
{
  var _done = false;

  void _setDone(bool? isChecked)
  {
    setState(() {
      _done = isChecked ?? false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          value: _done, 
          onChanged: _setDone
        ),
        const SizedBox(width: 12),
        Text(widget.text)
      ],
    );
  }
}