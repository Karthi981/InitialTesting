import 'package:flutter/material.dart';

class Thi extends StatefulWidget {
  const Thi({Key? key}) : super(key: key);
  @override
  State<Thi> createState() => _ThiState();
}

class _ThiState extends State<Thi> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(),
              image: DecorationImage(
                  image: AssetImage("assets/google.jpg"),
              fit: BoxFit.fill,),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              height: 300,
              width: 400,//border radius
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Container(
                              height: 160,
                              width: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage("assets/bg.jpg"),
                                  fit: BoxFit.fill,),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                                width: 140,
                                child: Center(child: Text("data"))
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 160,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage("assets/bg.jpg"),
                                fit: BoxFit.fill,),
                            ),
                          ),
                          SizedBox(
                              height: 40,
                              width: 140,
                              child: Center(child: Text("data2"))
                          ),
                        ],
                      ),
                ],
    ),
                  Text("Please choose one of the \n following images"),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            width: 300,//border radius
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Enter name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                      child: ElevatedButton(
                        onPressed: (){}, child: Icon(Icons.next_plan),)
                  ),
                )
              ],
            )

          ),
        ],
      ),
    );
  }
}
