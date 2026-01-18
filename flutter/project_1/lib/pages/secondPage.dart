import 'package:flutter/material.dart';
import 'package:project_1/pages/firstPage.dart';




class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
          backgroundColor: Colors.deepPurple,
         ),
      );
  }
}
