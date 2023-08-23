
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:tst/calci.dart';
import 'package:tst/calculator.dart';
import 'package:tst/ott.dart';
import 'package:tst/spotify.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        centered: true,
          duration: 2000,
          splashIconSize: double.maxFinite,
          splash: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  Color(0xff1f005c),
                  Color(0xff5b0060),
                  Color(0xff870160),
                  Color(0xffac255e),
                  Color(0xffca485c),
                  Color(0xffe16b5c),
                  Color(0xfff39060),
                  Color(0xffffb56b),
                ], // Gradient from https://learnui.design/tools/gradient-generator.html
                tileMode: TileMode.mirror,
              ),
              ),
            child: Center(
              child: Center(
              child: RichText(
                text: TextSpan(
                    text: "B",style: TextStyle(
                    color: Colors.red,
                    fontSize: 38,
                    fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: "attleVids",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ))
                    ]
                ),
              ),
            ) ,),
          ),
          nextScreen: Calci(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.black)
    );
  }
}


