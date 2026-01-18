import 'package:flutter/material.dart';
import 'package:project_1/pages/secondPage.dart';



class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

String greeting = '';


class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
     TextEditingController myController = TextEditingController();
    void updateGreeting() {
  setState(() {
    greeting = 'Hello, ${myController.text}!';
  });
}
  
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Page'),
          backgroundColor: Colors.deepPurple,
         ),
        body: Center(
          child: Padding(padding: EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                greeting,
                style: TextStyle(fontSize: 24),
              ),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your name',
                  hintText: 'Name',
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: updateGreeting,
                child: Text('Greet Me'),
              ),
            ],
          )),
            
          )  
        );
  }
}
