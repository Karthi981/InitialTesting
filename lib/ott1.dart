import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tst/Profile.dart';
import 'package:tst/color.dart';
import 'package:tst/model.dart';
import 'package:tst/videoott.dart';

class Ott2 extends StatefulWidget {
  const Ott2({Key? key}) : super(key: key);

  @override
  State<Ott2> createState() => _Ott2State();
}

class _Ott2State extends State<Ott2> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
            headerSliverBuilder: (BuildContext ctx , bool innerBoxisScrolled){
              return[
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.black,
                  toolbarHeight: 60,
                  title: RichText(
                    text: TextSpan(
                        text: "B",style: TextStyle(
                        color: Colors.blue,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(text: "attleVids",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ))
                        ]
                    ),
                  ) ,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.cast_outlined),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: GestureDetector(
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/sana.jpg"),
                                fit: BoxFit.fill),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Profile()),
                          );
                        },
                      ),
                    ),
                  ],
                  bottom: TabBar(
                    indicator: UnderlineTabIndicator(
                    ),
                      tabs: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("All"),
                    ),
                    Text("Movies"),
                    Text("TV Shows"),
                  ]
                  ),
                )
              ];
            },
            body: TabBarView(children: [
               SingleChildScrollView(
                 child: Column(
                  children: [
                    Padding(
                    padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                      height: 300,
                      aspectRatio: 16/9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      // onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                      ),
                      itemCount: lis.length,
                    itemBuilder: (BuildContext context, index, int pageViewIndex)
                    {
                      return Container(
                          width: 393,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(lis[index].image),
                          )
                        ),
                        );
                    }
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 20,
                        child: Text("Contine Watching",
                          style:GoogleFonts.lato(color: whi,fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 1,
                            itemBuilder: (BuildContext con,index)
                            {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 120,
                                  child: GestureDetector(
                                    child: Container(
                                      height: 100,
                                      width: 130,
                                      decoration: BoxDecoration
                                        (
                                        shape: BoxShape.rectangle,
                                        image: DecorationImage(
                                          image: AssetImage("assets/mv1.jpg"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const Video()),
                                      );
                                    },
                                  ),
                                ),
                              );
                            }
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 20,
                        child: Text("Movies",
                          style: GoogleFonts.lato(color: whi,fontSize: 18),
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 380,
                          child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio:  3/2,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 8),
                              itemCount: lis.length,
                              itemBuilder: (BuildContext con,index)  {
                                return Container(
                                  height: 200,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: 200,
                                        decoration: BoxDecoration
                                          (
                                          shape: BoxShape.rectangle,
                                          image: DecorationImage(
                                            image: AssetImage(lis[index].image),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Container(
                                          height: 20,
                                          decoration: BoxDecoration
                                            (
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Center(child:
                                          Text(lis[index].text,
                                            style: GoogleFonts.lato(color: whi),
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: SizedBox(
                        height: 20,
                        child: Text("Tv Shows",
                          style:GoogleFonts.lato(color: whi,fontSize: 18),
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 160,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 7,
                            itemBuilder: (BuildContext con,index)
                            {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      decoration: BoxDecoration
                                        (
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage("assets/jy.jpg"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 120,
                                    child: Center(child: Text("Friends",
                                    style: GoogleFonts.lato(color: whi),
                                    )),
                                  )
                                ],
                              );
                            }
                        ),
                      ),
                    ),
                  ],
              ),
               ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 800,
                        child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 1.8/ 2,
                                crossAxisSpacing: 2,
                                mainAxisSpacing: 4),
                            itemCount: lis.length,
                            itemBuilder: (BuildContext con,index)  {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 200,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 200,
                                        decoration: BoxDecoration
                                          (
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage(lis[index].image),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Container(
                                          height: 20,
                                          decoration: BoxDecoration
                                            (
                                            shape: BoxShape.rectangle,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Center(child:
                                          Text(lis[index].text,
                                            style: ggnor,)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 400,
                      child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 1.9/ 2,
                              crossAxisSpacing: 2,
                              mainAxisSpacing: 4),
                          itemCount: 4,
                          itemBuilder: (BuildContext con,index)  {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 200,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 200,
                                      decoration: BoxDecoration
                                        (
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage("assets/jy.jpg"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        height: 20,
                                        decoration: BoxDecoration
                                          (
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Center(child:
                                        Text("Twice",
                                          style: ggnor,)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ]),

      ),
    ),
    );
  }
}
