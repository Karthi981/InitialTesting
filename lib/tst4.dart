import 'package:flutter/material.dart';
import 'package:tst/tst3.dart';
class Tst4 extends StatelessWidget {
  const Tst4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
        child: Container(height: 35,width: 35,decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(),
        ),
            child: Image.asset("assets/camera.jpg")
        ),
      )),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/bg.jpg"),
          fit: BoxFit.fill,),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 280,width: 280,decoration: BoxDecoration(shape: BoxShape.rectangle,
              border: Border.all(),image: DecorationImage(image: AssetImage("assets/bg3.jpg"),fit: BoxFit.fill,)),
              child: Column(
                children: [
                  SizedBox(height: 135,width: 220,
                    child: Row(
                      children: [
                        Container(
                          height: 80,width: 90,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/bg.jpg"),fit: BoxFit.fill,)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(height: 120,width: 110,
                            child: Column(
                              children: [Center(child: Text("Welcome\nto the\n app")),Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(onPressed: (){}, child: Center(child: Text("Next >"))),
                              )],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 120,width: 180,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,border: Border.all(),
                    ),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/camera.jpg"),),border: Border.all()),),
                      ),
                      SizedBox(height: 100,width: 120,child: Column(children: [Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(decoration: InputDecoration(
                          icon: Icon(Icons.phone),
                          hintText: 'Ph No',border: OutlineInputBorder(),),),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        shape: BoxShape.circle,),
                        child:  Icon(Icons.skip_next)),

                      ],),)
                    ],),
                  ),
                ],
              ),
              ),
            ),
            Container(height: 150,width: 280,
              decoration: BoxDecoration(shape: BoxShape.rectangle,border: Border.all(),),
              child: Row(children: [
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Sec()),
                    );
                  },
                  child: Container(
                    height:130,
                    width: 90,
                    decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/bg.jpg"),fit: BoxFit.fill,),border:Border.all(),
                  ),),
                ),
              ),
                SizedBox(height: 150,width: 160,child: Column(children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 32,width: 32,decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),image: DecorationImage(image: AssetImage("assets/google.jpg"),
                        fit: BoxFit.fill,),
                      ),),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 32,width: 32,decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),image: DecorationImage(image: AssetImage("assets/facebook.jpg"),
                        fit: BoxFit.fill,),
                      ),),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 32,width: 32,decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),image: DecorationImage(image: AssetImage("assets/insta.jpg"),
                      fit: BoxFit.fill,)
                      ),),
                    )
                  ],),
                  Center(child: Text("twice\nfollow us on"))
                ],),)
              ],),
            ),


            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sec()),
              );
            }, child: Text("login"))
          ],
        ),
      ),
    );
  }
}
