import 'package:flutter/material.dart';

class Calci extends StatefulWidget {
  const Calci({Key? key}) : super(key: key);

  @override
  State<Calci> createState() => _CalciState();
}

class _CalciState extends State<Calci> {

  final ctrl =TextEditingController();
  String num1="",num2="",selopt="";
  bool clk = false;

  void displaynum(String val)
  {
    if(clk)
    {
      num2+=val;
      ctrl.text=num2;
    }
    else
    {
      num1+=val;
      ctrl.text =num1;
    }
  }
  void buttonpressed(String buttontext,String selop){

    if(buttontext=="C"){
      ctrl.clear();
      num1="";
      num2="";
      selopt="";
      clk=false;
    } else if(buttontext == '+' || buttontext == '-' || buttontext == '*' || buttontext == '/' || buttontext == '%') {
      num1=ctrl.text;
      ctrl.text=buttontext;
      selopt = selop;
      clk = true;
    }
    else if (buttontext=="="){
      calculate();
    }
    else {
      ctrl.text += buttontext;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(child: Text("Calculator",
          style: TextStyle(fontSize: 25,
          fontWeight: FontWeight.bold,
          ),),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: ctrl,
              style: const TextStyle(fontSize: 50,color: Colors.white),
              decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            ),
          ),
          const Divider(color: Colors.greenAccent,),
          SizedBox(
            height: 600,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 80,width: 80,
                      child: ElevatedButton(onPressed: () { buttonpressed("C","clear");},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                          child: const Text("C",style:TextStyle(
                              color: Colors.red,
                          fontSize: 24),
                          ),
                      ),
                    ),
                    SizedBox(
                      height: 60,width: 80,
                      child: ElevatedButton(onPressed: (){},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("( )",style:TextStyle(
                            color: Colors.red,
                        fontSize: 24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,width: 80,
                      child: ElevatedButton(onPressed: () { buttonpressed("%", "module");},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("%",style:TextStyle(
                            color: Colors.orangeAccent,
                        fontSize: 24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,width: 80,
                      child: ElevatedButton(onPressed: () {
                      ctrl.text="/";
                      selopt = "divide";
                      clk = true;
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("/",style:TextStyle(
                            color: Colors.orangeAccent,fontSize: 30),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 80,width: 80,
                      child: ElevatedButton(onPressed: (){
                        displaynum("7");

                      },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("7",style:TextStyle(
                            color: Colors.white,fontSize: 24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,width: 80,
                      child: ElevatedButton(onPressed: (){
                        displaynum("8");
                      },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("8",style:TextStyle(
                            color: Colors.white,fontSize: 24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,width: 80,
                      child: ElevatedButton(onPressed: (){
                        displaynum("9");
                      },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("9",style:TextStyle(
                            color: Colors.white,fontSize: 24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,width: 80,
                      child: ElevatedButton(onPressed: (){buttonpressed("*","multiply");},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("X",style:TextStyle(
                            color: Colors.orangeAccent,fontSize: 30),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 80,width: 80,
                      child: ElevatedButton(onPressed: (){
                        displaynum("4");
                      },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("4",style:TextStyle(
                            color: Colors.white,fontSize: 24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,width: 80,
                      child: ElevatedButton(onPressed: (){displaynum("5");},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("5",style:TextStyle(
                            color: Colors.white,fontSize: 24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,width: 80,
                      child: ElevatedButton(onPressed: (){
                       displaynum("6");
                      },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("6",style:TextStyle(
                            color: Colors.white,fontSize: 24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,width: 80,
                      child: ElevatedButton(onPressed: () { buttonpressed("-","minus");},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("-",style:TextStyle(
                            color: Colors.orangeAccent,fontSize: 50),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 80,width: 80,
                      child: ElevatedButton(onPressed: (){
                       displaynum("1");
                      },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("1",style:TextStyle(
                            color: Colors.white,fontSize: 24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,width: 80,
                      child: ElevatedButton(onPressed: (){
                        displaynum("2");

                      },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("2",style:TextStyle(
                            color: Colors.white,fontSize: 24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,width: 80,
                      child: ElevatedButton(onPressed: (){
                        displaynum("3");
                      },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("3",style:TextStyle(
                            color: Colors.white,fontSize: 24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,width: 80,
                      child: ElevatedButton(onPressed: (){ buttonpressed("+","add");},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("+",style:TextStyle(
                            color: Colors.orangeAccent,fontSize: 40),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 80,width: 80,
                      child: ElevatedButton(onPressed: (){},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("+/-",style:TextStyle(
                            color: Colors.white,fontSize: 24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,width: 80,
                      child: ElevatedButton(onPressed: (){
                       displaynum("0");
                      },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("0",style:TextStyle(
                            color: Colors.white,fontSize: 24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,width: 80,
                      child: ElevatedButton(onPressed: (){
                        displaynum(".");                      },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text(".",style:TextStyle(
                            color: Colors.white,fontSize: 24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,width: 80,
                      child: ElevatedButton(onPressed: (){buttonpressed("=","Equal to");},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)),
                        child: const Text("=",style:TextStyle(
                            color: Colors.orangeAccent,fontSize: 40),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 80,
                  width: 80,
                  child: ElevatedButton(onPressed: (){
                    String first = ctrl.text;
                    ctrl.text = first.substring(0,first.length-1);
                  }, child: Text("<<"),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  void calculate() {
    if(ctrl.text.isNotEmpty&&selopt!=0.0){
      double a  = double.parse(num1);
      double b  = double.parse(ctrl.text);
      double res= 0;
      if(selopt=="add")
      {
        res = a + b;
      }
      else if(selopt=="divide"){
        res = a/b;
      }
      else if(selopt=="module"){
        res = (a*b)/100;
      }
      else if(selopt=="multiply"){
        res = a*b;
      }
      else if(selopt=="minus"){
        res = a-b;
      }
      ctrl.text=res.toString();
      num1=res.toString();
      num2 ="";
      clk=false;
    }
  }
}
