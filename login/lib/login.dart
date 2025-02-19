import 'package:flutter/material.dart';
import 'package:login/screen2.dart';

class MyLogin extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){ 
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 76, 57, 243), 
      body: Center(
        child: Container( 
          height: 400,
          width: 400,
          decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(30)),
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
                      controller: _usernameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Username'),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _passwordController,
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

  void checkLogin(BuildContext ctx) {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == _password) {
      Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) {
        return Screen2();
      }));
    } else {
      final _errorMessage = 'Username password doesnot match';

      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          content: Text(_errorMessage),backgroundColor: Colors.red,
          margin: const EdgeInsets.all(20),
          behavior: SnackBarBehavior.floating,
        ),
      );
      // showDialog(
      //     context: ctx,
      //     builder: (ctx1) {
      //       return AlertDialog(
      //         title: Text('error'),
      //         content: Text(_errorMessage),
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
