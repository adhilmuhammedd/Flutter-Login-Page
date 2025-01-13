import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color: const Color.fromARGB(255, 76, 57, 243),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("hello",
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 40,
              ), 
              ),
              ElevatedButton.icon(onPressed: (){
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back),
               label: const Text('back'))
            ],
          ),
        ),
      )
    );
  }
}
