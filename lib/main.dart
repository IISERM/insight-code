import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:insight/screens/loginPage/loginPage.dart';

import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const InsightApp());
}

class InsightApp extends StatelessWidget {
  const InsightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Insight",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: const LoginPage()
    );
  }
}
