import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Saa extends StatefulWidget {
  const Saa({Key? key}) : super(key: key);

  @override
  State<Saa> createState() => _SaaState();
}

class _SaaState extends State<Saa> {

  final _key= GlobalKey<FormState>();

  final ctrl= TextEditingController();
  String num1="",num2="",selopt="";
  bool clk = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            SizedBox(height: 100,),

          TextFormField(
            controller: ctrl,
          //  keyboardType: TextInputType.text,

          ),
            SizedBox(height: 100,),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               ElevatedButton(onPressed: (){

                 if(clk)
                   {
                     num2="1";

                     ctrl.text =num2;
                   }
                 else
                   {
                     num1="1";

                     ctrl.text =num1;
                   }




               }, child: Text("1")),
               ElevatedButton(onPressed: (){
                 if(clk)
                 {
                   num2="2";

                   ctrl.text =num2;
                 }
                 else
                 {
                   num1="2";

                   ctrl.text =num1;
                 }


               }, child: Text("2")),
               ElevatedButton(onPressed: (){


                 ctrl.text ="+";
                 selopt="+";

                 clk = true;




               }, child: Text("+")),
               ElevatedButton(onPressed: (){

                 if(selopt=="+")
                   {
                     int a  = int.parse(num1);
                     int b =int.parse(num2);

                     int res = a + b;

                     ctrl.text = res.toString();


                   }



               }, child: Text("=")),
             ],
           )


          ],
        ),
      ),
    );
  }
}
