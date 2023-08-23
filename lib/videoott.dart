import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tst/Videoplayer.dart';
import 'package:tst/color.dart';
import 'package:tst/ott1.dart';
import 'package:tst/tst3.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
            headerSliverBuilder: (BuildContext context,bool innerBoxisScrolled){
              return[
                  SliverAppBar(
                    backgroundColor: Colors.black,
                    expandedHeight: 500,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.parallax,
                      centerTitle: true,
                      title: Text("John Wick 2",
                        style: TextStyle(
                          fontSize: 24,color: whi,
                        ),),
                      background: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: AssetImage("assets/mv1.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    leading: IconButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Sec()),
                        );
                      }, icon: Icon(Icons.arrow_back),),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.more_vert_outlined),
                      ),
                    ],
                  ),
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.black,
                  toolbarHeight: 80,
                  pinned: true,
                  primary: false,
                  title: TabBar(tabs: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("About"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Episodes"),
                    ),
                  ],),
                ),
              ];
            },
            body:TabBarView(children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 50,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Sampleplayer()),
                          );
                        },
                          child: Center(child: Text("Resume Ep.1",style: ggbold,)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0,bottom: 20,top: 20,right: 20),
                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: Column(
                                  children: [
                                    Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFF262626),
                                        ),
                                        child: Center(child: Icon(Icons.watch_later_outlined,color: Colors.white,size: 30,))),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        height: 20,
                                        width: 80,
                                        child: Center(
                                            child: Text("WatchList",
                                              style: ggnor,)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: Column(
                                  children: [
                                    Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFF262626),
                                        ),
                                        child: Center(child: Icon(Icons.star_rate,color: Colors.white,size: 30,))),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        height: 20,
                                        width: 80,
                                        child: Center(
                                            child: Text("Rate this",
                                              style: ggnor,)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: Column(
                                  children: [
                                    Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFF262626),
                                        ),
                                        child: Center(child: Icon(Icons.share,color: Colors.white,size: 30,))),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        height: 20,
                                        width: 80,
                                        child: Center(
                                            child: Text("Share",
                                              style: ggnor,)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Casts :",style: GoogleFonts.lato(color: whi,fontSize: 18),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 150,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                              itemCount: 8,
                              itemBuilder: (BuildContext ctx,index){
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 150,
                                  child: Column(
                                    children: [
                                      Container(
                                          height: 80,
                                          width: 80,
                                          decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(image: AssetImage("assets/jy.jpg"),
                                        fit: BoxFit.fill,
                                        )
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5.0),
                                        child: Container(
                                          height: 20,
                                          width: 80,
                                          child: Center(
                                              child: Text("jeongyeon",
                                                style: TextStyle(color: Colors.white,),)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                          }
                          ),
                        ),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Trailers :",style: GoogleFonts.lato(color: whi,fontSize: 18),)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: 4,
                              itemBuilder: (BuildContext ctx,index){
                                return ListTile(
                                    leading: Container(height: 80,width: 40,
                                        child: Image.asset("assets/mv1.jpg",fit: BoxFit.fill,)),
                                    title: Text("Trailer 1",style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                    subtitle: Text("EN 100%",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),),
                                );
                              }
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Episodes :",style: GoogleFonts.lato(color: whi,fontSize: 20),)),
                      ),
                      Container(
                        height: 700,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: 8,
                              itemBuilder: (BuildContext ctx,index){
                                return ListTile(
                                  leading: Container(height: 80,width: 40,
                                      child: Image.asset("assets/mv1.jpg",fit: BoxFit.fill,)),
                                  title: Text("Episodes 1",style: ggnor,),
                                  subtitle: Text("EN 100%",
                                    style: TextStyle(
                                      color: grey,
                                    ),),
                                  trailing: Icon(Icons.more_vert_outlined,color: whi,),
                                );
                              }
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ])
        ),
      ),
    );
  }
}
