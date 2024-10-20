import 'package:flutter/material.dart';
import 'package:study_app/core/theme.dart';

import 'features/home/ui/views/home_page.dart';

void main() {
  runApp(const StudyApp());
}

class StudyApp extends StatelessWidget {
  const StudyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: const HomePage(),
    );
  }
}
