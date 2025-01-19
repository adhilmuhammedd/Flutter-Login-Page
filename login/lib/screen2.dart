import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen2 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("hello"),
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
