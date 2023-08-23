import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:tst/color.dart';
import 'package:tst/tst3.dart';

class Ama2 extends StatefulWidget {
  const Ama2({Key? key}) : super(key: key);

  @override
  State<Ama2> createState() => _Ama2State();
}

class _Ama2State extends State<Ama2> {
  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        leading: IconButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sec()),
              );
            },
            icon: Icon(Icons.arrow_back),) ,
        title: Container(
          height: 40,
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search Amazon.in',
                suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.lens_blur_outlined),),
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
              icon: const Icon(Icons.mic,color: Colors.black,),),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CarouselSlider.builder(
                    itemCount: 9,
                    options: CarouselOptions(
                      height: 400,
                        aspectRatio: 16/9,
                        autoPlay: true,
                        reverse:  false,
                        enableInfiniteScroll: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration: const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        scrollDirection: Axis.horizontal,
                        viewportFraction: 1
                    ),
                    itemBuilder: (BuildContext context , int index , int pageviewindex)
                    {
                    return Container(
                    height: 100,
                    width: 460,
                    decoration: const BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage("assets/jy.jpg"),
                    fit: BoxFit.fill),
                    ),
                    );
                    }
                ),

                Positioned(
                  left: 20,
                  top: 20,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: const Center(
                      child: Text("10%\noff",
                        style: TextStyle
                          (color: Colors.white),),
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 20,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage("assets/bg3.jpg"),
                        fit: BoxFit.fill,)
                    ),
                  ),
                ),
        ],
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 30,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   IconButton(onPressed: (){}, icon: Icon(Icons.heart_broken_outlined),),
                   IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_add_outlined),)
                 ],
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 80,
               decoration: const BoxDecoration(
                 shape: BoxShape.rectangle,
               ),
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 8.0),
                     child: Column(
                       //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                               child: const Text("Visit the Oneplus Store",
                               style: TextStyle(
                                 color: Colors.lightBlueAccent,
                               ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 8.0),
                               child: RatingStars(
                                 value: value,
                                 onValueChanged: (v) {
                                   //
                                   setState(() {
                                     value = v;
                                   });
                                 },
                                 starBuilder: (index, color) => Icon(
                                   Icons.ac_unit_outlined,
                                   color: color,
                                 ),
                                 starCount: 5,
                                 starSize: 20,
                                 valueLabelColor: const Color(0xff9b9b9b),
                                 valueLabelTextStyle: const TextStyle(
                                     color: Colors.white,
                                     fontWeight: FontWeight.w400,
                                     fontStyle: FontStyle.normal,
                                     fontSize: 14.0),
                                 valueLabelRadius: 10,
                                 maxValue: 5,
                                 starSpacing: 3,
                                 maxValueVisibility: true,
                                 valueLabelVisibility: true,
                                 animationDuration: const Duration(milliseconds: 1000),
                                 valueLabelPadding:
                                 const EdgeInsets.symmetric(vertical: 2, horizontal: 9),
                                 valueLabelMargin: const EdgeInsets.only(right: 8),
                                 starOffColor: const Color(0xffe7e8ea),
                                 starColor: Colors.yellow,
                               ),
                             ),
                           ],
                         ),
                         const Text("One plus 10R 5G(Sierra Black,8GB Ram\n80W,123GB"),
                       ],
                     ),
                   ),

                 ],
               ),
             ),
           ),
           const Divider(),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,top: 10.0,bottom: 10.0),
                  child: RichText(
                      text: const TextSpan(
                        text: '-10%',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                          children: [
                          TextSpan(text: '₹34,999',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:35,
                            color: Colors.black,
                          ))
                        ]
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 10.0),
                  child: RichText(
                      text: const TextSpan(
                        text: 'M.R.P',
                        style: TextStyle(color: Colors.black,),
                        children: [
                          TextSpan(
                            text: '₹38,999',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.black,
                            )
                          )
                        ]
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 10.0),
                  child: RichText(text: const TextSpan(
                    text: 'EMI ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                   text: ' from ₹1672.No Cost EMI available\n Inclusive oof all Taxes',
                      style: TextStyle(
                       fontWeight: FontWeight.normal,
                         fontSize: 15,
                        )
                      )
                    ],
                  )),
                )
              ],
            ),
            const Divider(),
            Container(
             height: 400,
             width: 393,
             decoration: const BoxDecoration(
               shape: BoxShape.rectangle,
             ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,top: 10,bottom: 10),
                    child: Text("Total: ₹34,999",
                      style: sd ,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,bottom: 10),
                    child: RichText(text: TextSpan(
                      text: 'FREE Delivery ',
                      style: nor,
                      children: [
                        TextSpan(
                          text: 'Tomorrow 1 July.',
                          style:sd,
                        ),
                        TextSpan(
                          text: 'Order within',
                          style:nor,
                        ),
                        TextSpan(
                          text: '1hr 45 mins.',
                          style:TextStyle(
                            color: whi,
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,bottom: 10.0),
                    child: Container(
                      height: 40,
                      decoration: const BoxDecoration
                        (
                        shape: BoxShape.rectangle,
                        color: Colors.cyanAccent,
                      ),
                      child:Row(
                        children: [
                          IconButton(
                            onPressed: (){}, icon: const Icon(Icons.location_on_outlined),),
                          Container(
                              child: const Center(child: Text("Deliver to karthi-Kolappalur"))),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,bottom: 10,right: 8.0),
                    child: Center(
                      child: Container(
                          height: 55,
                          width: 380,
                          child:ElevatedButton(
                              child: const Text("Add to Cart",
                                  style: TextStyle(fontSize: 18)
                              ),
                              style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                  backgroundColor: MaterialStateProperty.all<Color>(const Color(
                                      0xFFBDBB56)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(40),
                                      )
                                  )
                              ),
                              onPressed: () => null
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,bottom: 10.0,right: 8.0),
                    child: Center(
                      child: Container(
                        height: 55,
                          width: 380,
                      child:ElevatedButton(
                          child: const Text("Buy now",
                              style: TextStyle(fontSize: 18)
                          ),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                  )
                              )
                          ),
                          onPressed: () => null
                      )
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text("Add to Wishlist",
                    style: TextStyle(color: Color(0xFF3A91AB),height: 1.3),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
