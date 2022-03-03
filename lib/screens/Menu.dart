import 'package:finance_app/screens/DoctorScreen.dart';
import 'package:finance_app/screens/LoginDemo.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

bool firstvalue = false;
bool secondvalue = false;

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pinkAccent,
        body: Column(children: <Widget>[
          Container(
            height: 265,
            child: Image.asset('asset/images/Doctor.png'),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 20, 45, 5),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Welcome',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            child: const Text(
              'Get your Doctor without even going to the hospital',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 10, 230, 30),
            child: const Text('Are You a',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.yellow)),
          ),
          Row(children: <Widget>[
            const Padding(padding: EdgeInsets.fromLTRB(35, 10, 10, 10)),
            const Text(
              'Patient',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Checkbox(
                value: firstvalue,
                checkColor: Colors.white,
                activeColor: Colors.green,
                onChanged: (bool? value1) {
                  setState(() {
                    firstvalue = value1!;
                    secondvalue = false;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginDemo()));
                  });
                }),
            const Padding(padding: EdgeInsets.fromLTRB(60, 10, 10, 10)),
            const Text(
              'Doctor',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Checkbox(
                value: secondvalue,
                checkColor: Colors.white,
                activeColor: Colors.green,
                onChanged: (bool? value2) {
                  setState(
                    () {
                      secondvalue = value2!;
                      firstvalue = false;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => DoctorScreen()));
                    },
                  );
                }),
          ]),
        ]));
  }
}
