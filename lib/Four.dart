import 'package:flutter/material.dart';

class Four extends StatefulWidget {
  const Four({Key? key}) : super(key: key);

  @override
  State<Four> createState() => _FourState();
}

class _FourState extends State<Four> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),),
        title: Center(child: Text("Menu")),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Report",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.question_answer),
                hintText: 'Enter name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.question_answer),
                hintText: 'Fill the question',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Thank you",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.question_answer),
                hintText: 'Fill the question',
                border: OutlineInputBorder(),
              ),
            ),
          ),


          //
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text("Report",
          //     style: TextStyle(
          //       fontSize: 35,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.red,
          //     ),),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextFormField(
          //     decoration: InputDecoration(
          //       icon: Icon(Icons.question_answer),
          //       hintText: 'Enter name',
          //       border: OutlineInputBorder(),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextFormField(
          //     decoration: InputDecoration(
          //       icon: Icon(Icons.question_answer),
          //       hintText: 'Fill the question',
          //       border: OutlineInputBorder(),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text("Thank you",
          //     style: TextStyle(
          //       fontSize: 35,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.red,
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextFormField(
          //     decoration: InputDecoration(
          //       icon: Icon(Icons.question_answer),
          //       hintText: 'Fill the question',
          //       border: OutlineInputBorder(),
          //     ),
          //   ),
          // ),
          //
          //
          //
          //
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text("Report",
          //     style: TextStyle(
          //       fontSize: 35,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.red,
          //     ),),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextFormField(
          //     decoration: InputDecoration(
          //       icon: Icon(Icons.question_answer),
          //       hintText: 'Enter name',
          //       border: OutlineInputBorder(),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextFormField(
          //     decoration: InputDecoration(
          //       icon: Icon(Icons.question_answer),
          //       hintText: 'Fill the question',
          //       border: OutlineInputBorder(),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text("Thank you",
          //     style: TextStyle(
          //       fontSize: 35,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.red,
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextFormField(
          //     decoration: InputDecoration(
          //       icon: Icon(Icons.question_answer),
          //       hintText: 'Fill the question',
          //       border: OutlineInputBorder(),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

