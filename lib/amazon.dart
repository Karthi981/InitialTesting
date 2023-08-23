import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tst/Insta.dart';
import 'package:tst/amazon2.dart';
import 'package:tst/color.dart';
import 'package:tst/model.dart';
import 'package:tst/spotify.dart';
import 'package:tst/tst3.dart';

class Ama extends StatefulWidget {
  const Ama({Key? key}) : super(key: key);

  @override
  State<Ama> createState() => _AmaState();
}

class _AmaState extends State<Ama> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:abc,
        title: Container(
            height: 40,
            child: Center(
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Amazon.in',
                  suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.lens_blur_outlined),),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: (){},
                icon: Icon(Icons.mic,color: Colors.black,),),
            )
          ],
        ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 40,
          decoration: BoxDecoration
            (
            shape: BoxShape.rectangle,
            color: Colors.cyanAccent,
            ),
              child:Row(
                children: [
                  IconButton(
                    onPressed: (){}, icon: Icon(Icons.location_on_outlined),),
                  Container(
                      child: Center(child: Text("Deliver to karthi-Kolappalur"))),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 90,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                child: Container(
                                  height: 80,
                                  width: 90,
                                    decoration: BoxDecoration
                                    (
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                     image: AssetImage(lis[index].images),
                                     fit: BoxFit.fill,
                                    ),
                                      ),
                                    ),
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Ama2()),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 20,
                                width: 90,
                                decoration: BoxDecoration
                                  (
                                  shape: BoxShape.rectangle,
                                ),
                                child: Center(child: Text("Fashion")),
                              ),
                            )
                        ],
                        ),
                      ),
                    );
                  }
              ),
            ),
            CarouselSlider.builder(
                itemCount: 9,
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16/9,
                  autoPlay: true,
                  reverse: false,
                  enableInfiniteScroll: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.horizontal,
                  viewportFraction: 1
                ),
                itemBuilder: (BuildContext context , int index , int pageviewindex)
                {
                  return Container(
                    height: 100,
                    width: 460,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage("assets/bg3.jpg"),
                      fit: BoxFit.fill),
                    ),
                  );
                }
            ),
            Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:15,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 120,
                        decoration: BoxDecoration
                          (
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage("assets/jy.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Prime Day is July 15th and 16th|Enjoy new\nlaunches and shopping rewards",),
                ),
                Container(
                  height: 400,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300,
                        childAspectRatio: 5/2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (BuildContext ctx, index) {
                        return Column(
                          children: [
                            Container(
                              height:40,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage("assets/facebook.jpg"),
                                  fit: BoxFit.fill,
                                )
                              ),
                            ),
                            Container(
                              height: 30,
                              child: Text("products"),
                            )
                          ],
                        );
                      }
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      );
  }
}
