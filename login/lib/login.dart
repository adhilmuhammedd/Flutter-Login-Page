import 'package:flutter/material.dart';
import 'package:login/screen2.dart';

class MyLogin extends StatelessWidget {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
<<<<<<< HEAD
  Widget build(BuildContext context) {
=======
  Widget build(BuildContext context){  
>>>>>>> 8c6a183cd7a4e019782bff9986b428cf4e64d6ef
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 76, 57, 243), 
      body: Center(
        child: Container( 
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    const Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 35),
                    ),
                    const Divider(),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Username'),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'password'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      onPressed: () {
                        checkLogin(context);
                      },
                      icon: const Icon(Icons.login),
                      label: const Text('Login'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext context) {
    var use = "adhil";
    var pass = "0000";
    if (usernameController.text == use && passwordController.text == pass) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return Screen2();
          },
        ),
      );
    } else if (usernameController.text == passwordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Enter username and password"),
          backgroundColor: Colors.red,
          margin: const EdgeInsets.all(20),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }else if (usernameController.text == use) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Enter your password"),
          backgroundColor: Colors.red,
          margin: const EdgeInsets.all(20),
          behavior: SnackBarBehavior.floating,
        ),
      );
    } else if (passwordController.text == pass) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Enter your username"),
          backgroundColor: Colors.red,
          margin: const EdgeInsets.all(20),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }else if (usernameController.text != use && passwordController.text != pass) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("invalid username and password"),
          backgroundColor: Colors.red,
          margin: const EdgeInsets.all(20),
          behavior: SnackBarBehavior.floating, 
        ),
      );
      }else if (usernameController.text != use && passwordController.text == pass) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("invalid username and password"),
          backgroundColor: Colors.red,
          margin: const EdgeInsets.all(20),
          behavior: SnackBarBehavior.floating, 
        ),
      );
      }else if (usernameController.text == use && passwordController.text != pass) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("invalid username and password"),
          backgroundColor: Colors.red,
          margin: const EdgeInsets.all(20),
          behavior: SnackBarBehavior.floating, 
        ),
      );
      }else {
      final errorMessage = 'Username password doesnot match';

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
          backgroundColor: Colors.red,
          margin: const EdgeInsets.all(20),
          behavior: SnackBarBehavior.floating,
        ),
      );
      // showDialog(
      //     context:context ,
      //     builder: (ctx1) {
      //       return AlertDialog(
      //         title: Text('error'),
      //         content: Text(errorMessage),
      //         actions: [
      //           TextButton(
      //             onPressed: () {
      //               Navigator.of(ctx1).pop();
      //             },
      //             child: Text('Close'),
      //           )
      //         ],
      //       );
      // });
    }
  }
}
