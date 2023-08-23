import 'package:flutter/material.dart';
import 'package:tst/Profile.dart';
import 'package:tst/color.dart';
import 'package:tst/tst3.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Sec()),
          );
        }, icon: Icon(Icons.arrow_back_ios_new),),
        title: Text("Find",style: ggnor,),
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
      ),
      body: Column(
        children: [
          Text("Genres",style: ggbold),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 7/ 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2),
                  itemCount: 6,
                  itemBuilder: (BuildContext con,index)  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: abc,
                        ),
                        child: Center(child: Text("Action and Adventure",
                        style: ggnor,
                        ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Search",
                style: ggbold),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 80,
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.lens_blur_outlined),),
                    filled: true,
                    fillColor: whi,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
