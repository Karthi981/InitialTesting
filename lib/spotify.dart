import 'package:flutter/material.dart';


class Spo extends StatelessWidget {


  const Spo({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Color(0xFF476443),
    leading: IconButton(onPressed: (){},
             icon: Icon(Icons.arrow_back,
            color: Color(0xFFDBE4E7),)),
       ),
      body: DefaultTabController(
      length: 2,
      child:  NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
    {
        return [
      SliverAppBar(
      toolbarHeight: 354,
      floating: true,
      backgroundColor: Color(0xFF222F1F),

        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFB5E5A2),
                          prefixIcon: Icon(Icons.search,color: Colors.white,),
                          hintText: 'Find in playlist',
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 170,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage("assets/jy.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Spacer(),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xFF131C13),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,bottom: 8.0,top: 8.0,right: 8.0),
                      child: Icon(Icons.favorite_border,color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.grey,),
                    ),
                    IconButton(onPressed: (){},
                      icon: Icon(Icons.more_vert_outlined),
                      color:Colors.grey ,),
                    Spacer(),
                    Icon(Icons.shuffle_outlined,
                      color: Colors.grey,),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,bottom: 8.0,top: 8.0,left:8.0),
                      child: Container(
                        height: 50,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: Icon(Icons.play_circle,),
                      ),
                    )

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
        ];

    },
         body: ListView.builder(
           itemCount: 20,
           itemBuilder:(BuildContext con,index)
           {
             return ListTile(
               leading: Container(height: 50,width: 40,
                   child: Image.asset("assets/jy.jpg",fit: BoxFit.fill,)),
               title: Text("Shut Down"),
               subtitle: Row(
                 children: [
                   Container(
                     height: 15,
                     width: 50,
                     decoration: BoxDecoration(
                       shape: BoxShape.rectangle,
                       color: Colors.grey,
                     ),
                     child: Center(child: Text('LYRICS',
                       style: TextStyle(
                         fontSize: 11,
                         color: Colors.black,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 8.0),
                     child: Text("BLACKPINK"),
                   ),
                 ],
               ),
               trailing: Icon(Icons.more_vert_outlined),
             );
           } ,
    ),
        ),
        ),
    );
  }
}
