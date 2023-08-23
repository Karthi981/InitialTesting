import 'package:flutter/material.dart';


class Soo extends StatefulWidget {
  const Soo({Key? key}) : super(key: key);

  @override
  State<Soo> createState() => _SooState();
}

class _SooState extends State<Soo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
        return [
 //        SliverAppBar(
 //          leading: Icon(Icons.arrow_back),,
 //          flexibleSpace: FlexibleSpaceBar(
 //            title: SliverAppBar(
 // \
 //            ),
 //          ),
 //        ),
        ];
      }, body: ListView(),),
    );
  }
}
