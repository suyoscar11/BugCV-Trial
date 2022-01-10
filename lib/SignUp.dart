// ignore_for_file: unnecessary_string_escapes

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
            backgroundColor: Colors.cyan),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/images/Moon.jpg'), fit: BoxFit.cover),
          ),
        ));
  }
}
