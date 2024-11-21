import 'dart:async';
import 'package:flutter/material.dart';

import 'animation second task/task_2.dart';
import 'drag and dargtarget/task_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  AnimalMatchingGame(),
    );
  }
}