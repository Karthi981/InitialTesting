import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tst/amazon.dart';
import 'package:tst/color.dart';

class Ins extends StatefulWidget {
  const Ins({Key? key}) : super(key: key);

  @override
  State<Ins> createState() => _InsState();
}

class _InsState extends State<Ins> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            const Text("karthi_98",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
            ),),
            IconButton(onPressed: (){},
                icon: const Icon(Icons.arrow_downward,
                color: Colors.black,)),
          ],
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(Icons.add_box_outlined),
          color: Colors.black,),
          IconButton(onPressed: (){},
              icon: const Icon(Icons.menu),
          color: Colors.black,),
        ],
      ),
      body: DefaultTabController(
        length: 2,
          child:Stack(
            children:[ NestedScrollView(
                headerSliverBuilder: (BuildContext context,bool innerBoxisScrolled){
                  return[
                    SliverAppBar(
                      toolbarHeight: 200,
                      backgroundColor: Colors.white,
                      pinned: false,
                      flexibleSpace: Column(
                        children: [
                          SizedBox(
                            height: 140,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0),
                                      child: Container(
                                        height: 100,
                                        width: 80,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage("assets/jy.jpg"),
                                              fit: BoxFit.fill,
                                            )
                                        ),
                                      ),
                                    ),
                                    const Text("Jeongyeon"),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50.0),
                                  child: Center(
                                    child: RichText(text: const TextSpan(
                                      text: ' 51\n',
                                      style: TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                      children: [
                                        TextSpan(
                                          text: 'Post',style: TextStyle(
                                            color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14)
                                        )
                                      ]
                                    )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: Center(
                                    child: RichText(text: const TextSpan(
                                        text: '  7.5M\n',
                                        style: TextStyle(fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black),
                                        children: [
                                          TextSpan(
                                              text: 'Followers',style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14)
                                          )
                                        ]
                                    )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: Center(
                                    child: RichText(text: const TextSpan(
                                        text: '    0\n',
                                        style: TextStyle(fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black),
                                        children: [
                                          TextSpan(
                                              text: 'Following',style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14)
                                          )
                                        ]
                                    )),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 30,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    color: abc,
                                  ),
                                  child: ElevatedButton(onPressed: (){},
                                      child: const Center(
                                          child: Text("Following"),),
                                    style: ButtonStyle(
                                      backgroundColor:  MaterialStateProperty.all<Color>(const Color(
                                          0xFFA9A9A6)),
                                      foregroundColor:  MaterialStateProperty.all<Color>(const Color(
                                          0xFF090909)),
                                    ),)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    height: 30,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10),
                                      color: abc,
                                    ),
                                    child: ElevatedButton(onPressed: (){},
                                      child: const Center(
                                        child: Text("Message"),),
                                      style: ButtonStyle(
                                        backgroundColor:  MaterialStateProperty.all<Color>(const Color(
                                            0xFFA9A9A6)),
                                        foregroundColor:  MaterialStateProperty.all<Color>(const Color(
                                            0xFF090909)),
                                      ),)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10),
                                      color: abc,
                                    ),
                                    child: ElevatedButton(onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const Ins()),
                                      );
                                    },
                                      child: const Center(child: Icon(Icons.person)),
                                      style: ButtonStyle(
                                        backgroundColor:  MaterialStateProperty.all<Color>(const Color(
                                            0xFFA9A9A6)),
                                        foregroundColor:  MaterialStateProperty.all<Color>(const Color(
                                            0xFF090909)),
                                      ),)
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SliverAppBar(
                      toolbarHeight: 30,
                      backgroundColor: Colors.white,
                      pinned: true,
                      primary: false,
                      title:Align(
                        alignment: AlignmentDirectional.center,
                        child: TabBar(
                          labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            indicatorColor: Colors.black,
                            isScrollable: true,
                            tabs: [
                              Padding(
                                padding: const EdgeInsets.only(right: 80.0),
                                child: Tab(
                                  icon: Icon(Icons.grid_3x3_outlined,),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 80.0),
                                child: Tab(
                                  icon: Icon(Icons.bookmark_add_outlined,),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),

                  ];
                },
                body: TabBarView (children: <Widget>
                [
                  GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 150,
                          childAspectRatio: 4/ 3,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8),
                      itemCount: 15,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage("assets/jy.jpg"),
                            fit: BoxFit.fill)
                          ),
                        );
                      }
                      ),
                  GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 150,
                          childAspectRatio: 4/ 3,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8),
                      itemCount: 15,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage("assets/bg2.jpg"),
                                  fit: BoxFit.fill)
                          ),
                        );
                      }
                  ),
                ]
                ),
            ),
      ]
          ),
      ),
    );
  }
}

