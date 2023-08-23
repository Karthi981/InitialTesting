import 'package:flutter/material.dart';
import 'package:tst/calci.dart';
import 'package:tst/calculator.dart';
import 'package:tst/ott1.dart';
import 'package:tst/Search.dart';

class Sec extends StatefulWidget {
  const Sec({Key? key}) : super(key: key);

  @override
  State<Sec> createState() => _SecState();
}
class _SecState extends State<Sec> {
    int _index = 0 ;
    final pages = [
      Calci(),
      Calculator(),
    ];
    void tap(index){
      setState(() {
        _index = index;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
          fixedColor: Colors.red,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          ],
        currentIndex: _index,
        onTap: tap,
      ),
    );
  }
}

