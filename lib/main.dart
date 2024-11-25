import 'dart:async';
import 'package:animation_ui/speed_task/first_task.dart';
import 'package:flutter/material.dart';

import 'animation second task/task_2.dart';
import 'drag and dargtarget/task_1.dart';
import 'hero_animation/hero_images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HeroAnimation(),
    );
  }
}