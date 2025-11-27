import 'package:flutter/material.dart';
import 'package:initial_project/app_controller.dart';
import 'package:initial_project/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: AppController.instance, 
    builder: (context, child) {
      return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light),
      home: HomePage(),
    );
    });
  }
  
}