import 'package:flutter/material.dart';
import 'package:initial_project/app_controller.dart';
import 'package:initial_project/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: AppController.instance, 
    builder: (context, child) {
      return MaterialApp(
      theme: ThemeData(
        useMaterial3: false, 
        primarySwatch: Colors.red,
        brightness: 
           AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light
      ),
      home: HomePage(),
    );
    });
  }
  
}