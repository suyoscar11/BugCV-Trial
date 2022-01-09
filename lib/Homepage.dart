import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text('Welcome',
                style: TextStyle(
                    backgroundColor: Colors.orange,
                    fontSize: 70,
                    fontWeight: FontWeight.bold)),
          )),
      body: Column(
        children: const [SizedBox()],
      ),
    );
  }
}
