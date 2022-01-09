import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
                child: Text('Welcome. Lets get you Started',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
            backgroundColor: Colors.cyan));
  }
}
