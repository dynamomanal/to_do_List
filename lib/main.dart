import 'package:flutter/material.dart';
import 'package:todolist/screens/tasks_screen.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
  
    );
  }
}

