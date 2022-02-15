import 'package:finance_app/screens/Premium.dart';
import 'package:finance_app/screens/Profile.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
          const Padding(padding: EdgeInsets.symmetric(horizontal: 80)),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(220, 10, 10, 30)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
                iconSize: 30,
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 10, 10, 0)),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Premium()));
                },
                icon: const Icon(Icons.account_circle),
                iconSize: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              padding: const EdgeInsets.only(right: 210),
              child: const Text.rich(
                TextSpan(
                    text: ' Good Day,',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              )),
          const SizedBox(height: 10),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 490,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/images/Chor Design.png'))),
          )
        ]),
        bottomNavigationBar: BottomNavigationBar(
            // this will be set when a new tab is tapped
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: ('Profile'),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: ('Settings'))
            ]));
  }
}
