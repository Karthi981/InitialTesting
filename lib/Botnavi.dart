import 'package:flutter/material.dart';
import 'package:tst/tst4.dart';

class SBotnavi extends StatefulWidget {
  const SBotnavi({Key? key}) : super(key: key);

  @override
  State<SBotnavi> createState() => _SBotnaviState();
}

class _SBotnaviState extends State<SBotnavi> {

  int _index = 0 ;

  final pages = [



    Center(child: Text("data1")),
    Tst4(),
  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }


  @override
  Widget build(BuildContext context) {






    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
         BottomNavigationBarItem(icon: Icon(Icons.search),label: "profile"),
        ],
        currentIndex: _index,
        onTap: tap,

      ),
    );
  }
}



