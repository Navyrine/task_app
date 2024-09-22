import 'package:flutter/material.dart';
import 'package:task_app/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Task App"),
        ),
        body: const HomeScreen(),
      ),
    ),
  );
}
