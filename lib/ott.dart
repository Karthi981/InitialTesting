import 'package:flutter/material.dart';
import 'package:tst/tst3.dart';


class Ott1 extends StatefulWidget {
  const Ott1({Key? key}) : super(key: key);

  @override
  State<Ott1> createState() => _Ott1State();
}

class _Ott1State extends State<Ott1> {

  final _formfield = GlobalKey<FormState>();
  final usercontroller = TextEditingController();
  final passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formfield,
        child: Column(
          children: [
            SizedBox(height: 240,),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blue),
                image: DecorationImage(
                    image: AssetImage("assets/sana.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0,right: 35,bottom: 20,top: 20),
              child: TextFormField(
                 validator: (value) {
                   if (value!.isEmpty) {
                      return 'Enter Username';
                       }
                    final
                uservalid = RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+").hasMatch(value);
                  if (!uservalid) {
                      return "Enter Valid Username";
                    }
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(
                  ),
                  labelText: "Enter Username",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0,right: 35,bottom: 20,top: 20),
              child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Password';
                      }
                      final uservalid = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$")
                          .hasMatch(value);
                      if (!uservalid) {
                        return "Enter Valid Password";
                      }
                    },
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                  labelText: "Enter password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                        height: 40,
                        width: 80,
                child: ElevatedButton(onPressed: (){
                  if(_formfield.currentState!.validate()){
                    usercontroller.clear();
                    passcontroller.clear();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Sec()),
                    );
                  }
                }, child: Text("Login"),
                style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              backgroundColor: MaterialStateProperty.all<Color>(const Color(
                  0xFF6E6ED7)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
                ),
                ),
            ),
              ),
              ),
            ),
    ],
        ),
      ),
    );
  }
}
