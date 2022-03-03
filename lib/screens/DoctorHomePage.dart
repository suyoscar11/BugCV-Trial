import 'package:flutter/material.dart';

class DoctorHomepage extends StatelessWidget {
  const DoctorHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const Padding(padding: EdgeInsets.symmetric(horizontal: 80)),
      const SizedBox(
        height: 30,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Padding(padding: EdgeInsets.fromLTRB(320, 10, 10, 30)),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add_a_photo_rounded),
          iconSize: 30,
        ),
        Text('Welcome')
      ]),
      SizedBox(
        height: 19,
      ),
      Padding(padding: EdgeInsets.only(right: 270)),
      Text(
        "Today's List",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 19),
      Padding(
        padding: const EdgeInsets.only(right: 180),
        child: Container(
          height: 120,
          width: 150,
          color: Colors.cyan,
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Text('Test Patient 1',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100)),
        ),
      ),
      SizedBox(
        height: 30,
      ),
    ]));
  }
}
