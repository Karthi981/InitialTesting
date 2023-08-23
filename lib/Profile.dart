import 'package:flutter/material.dart';
import 'package:tst/color.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
            headerSliverBuilder: (BuildContext ctx , bool innerBoxIsScrolled){
              return [
                SliverAppBar(
                  backgroundColor: Colors.black,
                  toolbarHeight: 90,
                  title: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/sana.jpg"),
                              fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                      Text("Karthi",style: ggbold,),
                    ],
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.cast_outlined),),
                    ),
                  ],
                  pinned: true,
                  bottom: TabBar(tabs: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Watchlist"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Purchases"),
                      ),
              ]
              ),
                )
              ];
              
            }, body: TabBarView(
                children: [
                  Container(
                    height: 700,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 2,
                          itemBuilder: (BuildContext ctx,index){
                            return ListTile(
                              leading: Container(height: 80,width: 40,
                                  child: Image.asset("assets/mv1.jpg",fit: BoxFit.fill,)),
                              title: Text("Episodes 1",style: ggnor,),
                              subtitle: Text("EN 100%",
                                style: TextStyle(
                                  color:grey,
                                ),),
                              trailing: Icon(Icons.more_vert_outlined),
                            );
                          }
                      ),
                    ),
                  ),
                  Center(
                    child: Text("Rent & buy your favorites",
                 style: supergg,),
                  ),
              
        ]
        ),
        ),
      ),
    );
  }
}
