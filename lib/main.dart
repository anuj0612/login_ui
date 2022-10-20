import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/login.dart';
import 'package:login_ui/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      theme: ThemeData(
        primarySwatch:Colors.indigo,
      ),
      home: const WelcomeActivity(),
    );
  }
}

