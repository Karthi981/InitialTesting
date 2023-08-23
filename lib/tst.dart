import 'package:flutter/material.dart';
import 'package:tst/amazon.dart';
import 'package:tst/tst3.dart';

class Tst extends StatefulWidget {
   Tst({Key? key}) : super(key: key);
  @override
  State<Tst> createState() => _TstState();
}

class _TstState extends State<Tst> {
  final _formfield = GlobalKey<FormState>();
  final usercontroller = TextEditingController();
  final passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              height:300,
              width: 350,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(),
                borderRadius: BorderRadius.circular(15),
              ),
              child:  Form(
                key: _formfield,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("welcome",
                          style: TextStyle(color: Colors.black,fontSize: 25,
                              fontWeight: FontWeight.bold)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Username';
                          }
                          final uservalid = RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+").hasMatch(value);
                          if(!uservalid){
                            return "Enter Valid Username";
                          }
                        },
                        decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: "Enter name",
                        border: OutlineInputBorder(),
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Password';
                          }
                          final uservalid = RegExp(r"^[a-zA-Z{8,}$]").hasMatch(value);
                          if(!uservalid){
                            return "Enter Valid Password";
                          }
                        },
                        decoration: const InputDecoration(
                          icon: Icon(Icons.password),
                          labelText: 'Enter password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ElevatedButton(onPressed: (){
                      if(_formfield.currentState!.validate()){
                        usercontroller.clear();
                        passcontroller.clear();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Sec()),
                        );
                      }
                    }, child: const Text("Log in"))
                  ],
                ),
              ),
              ),
          ),
        ),
      ),
      );
  }
}
