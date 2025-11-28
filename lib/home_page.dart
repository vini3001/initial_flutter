import 'package:flutter/material.dart';
import 'package:initial_project/app_controller.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
      body: Center(
        child: Switch(
         value: AppController.instance.isDarkTheme,
         onChanged: (value) {
          AppController.instance.changeTheme();
         })
      )
    );
  }}