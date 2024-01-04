import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/farmer/customersrev.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'blog.dart';
import 'details.dart';
// void main()
// {
//   runApp(MaterialApp(home: Mainui(),));
// }
class Mainui extends StatelessWidget{
  var tabs = ["OFFERS","VEGETABLES","FRUITS","EXOTIC"];
  var cars =[   "https://res.cloudinary.com/farmersfreshzone/image/upload/v1697711207/banner/jrfzvbw3jlstr1x2edwx.jpg",
    "https://res.cloudinary.com/farmersfreshzone/image/upload/v1698560458/banner/madfkn1aixrqcyeispta.jpg",
    "https://res.cloudinary.com/farmersfreshzone/image/upload/v1698757840/banner/efvo4m7lgyqgkeul4t9y.jpg",
  ];
  List categoryimg = [
    "https://img.freepik.com/premium-vector/big-sale-banner-green_49058-91.jpg",
    "https://farmersfz.com/assets/public/vegimg/beetroot1.jpg",
    "https://farmersfz.com/assets/public/vegimg/AVCD_(1).jpg",
    "https://farmersfz.com/assets/public/vegimg/Lettgreen2.jpg",
    "https://farmersfz.com/assets/public/vegimg/dl3bzfqb2epx1yzgut05_(1).jpg",
    "https://farmersfz.com/assets/public/vegimg/RSMR1.jpg",
    "https://farmersfz.com/assets/public/vegimg/Turmeric1.jpg",
  ];

  List tabitems = [
    "OFFERS",
    "VEGETABLES",
    "FRUITS",
    "EXOTIC",
    "FRESH CUTS",
    "NUTRITION CHARGERS",
    "PACKED FLAVOURS"
  ];
  List news = [
    "https://farmersfz.com/assets/v4/assets/news_1.png",
    "https://farmersfz.com/assets/v4/assets/news_2.png",
    "https://farmersfz.com/assets/v4/assets/news_3.png",
    "https://farmersfz.com/assets/v4/assets/news_4.png",
  ];



  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Colors.green,
            title: Text("FARMERS FRESH ZONE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
           actions: [Row(
             children: [
               Icon(Icons.location_on_outlined,color: Colors.white,),
               Text("KOCHI",style: TextStyle(color: Colors.white),),
               Icon(Icons.arrow_drop_down,color: Colors.white,)
             ],
           )],
           
            bottom:PreferredSize(preferredSize: Size(10, 80),
              child: Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10,bottom: 10),
                child: TextField(
                cursorHeight: 10  ,
                decoration: InputDecoration(
                hintText: "Search for vegetables,fruits",
                hintStyle: TextStyle(color: Colors.grey),
                prefixIconColor: Colors.grey,
                prefixIcon: Icon(Icons.search),
                 filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),

                            ),
                            ),
              ),
          ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,

              child: ListView(
                padding: const EdgeInsets.only(left: 10, right: 10 ),
                scrollDirection: Axis.horizontal,
                children: List.generate(4, (index) =>
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 5,top: 5),
                  child: ElevatedButton(onPressed: (){}, child: Text(tabitems[index])),
                )
            ),
          ),
              ),

          ),
          SliverToBoxAdapter(
            child: CarouselSlider(items:List.generate(cars.length, (index) =>
            SizedBox(
              height: 220,
              child: Image(image: NetworkImage(cars[index]),fit: BoxFit.fill,),
              ),
            ) ,

                options: CarouselOptions(
                
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2)
                )),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),

              height: 150,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ]),

              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.0,left: 8),
                        child: SizedBox(
                            height:50,
                            child: Image(image: AssetImage("assets/image/stopwatch.png"),fit: BoxFit.fill,)),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 35.0,left: 8),
                        child: Text("30 MINS POLICY"),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0,top: 10),
                        child: SizedBox(
                          height: 50,
                         child: Image(image: AssetImage("assets/image/traceability.png",),fit: BoxFit.fill)
                          ),
                        // child: Container(
                        //   decoration: BoxDecoration(
                        //     image: DecorationImage(image: AssetImage("assets/image/traceability.png",),fit: BoxFit.fill))
                        //   ),
                         ),

                      Padding(
                        padding: EdgeInsets.only(top: 35.0,left: 15),
                        child: Text("TRACEABILITY"),
                      )
                    ],
                  ),
                  Column(
                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0,top: 10),
                        child: SizedBox(
                          height: 50,
                            child: Image(image: AssetImage("assets/image/farmer.png"),fit: BoxFit.fill)
                                              ),
                      ),

                       Padding(
                         padding: EdgeInsets.only(left: 8.0,top: 35),
                         child: Text("LOCAL SOURCING"),
                       )

                    ],
                  )
                ],
              ),
            ),
          ),
          
           SliverToBoxAdapter(
            child: Text("Shop By Category",style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
           const SliverToBoxAdapter(
             child: SizedBox(height: 8,),
           ),
           SliverGrid.builder(

                itemCount: categoryimg.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.8,
                    crossAxisCount: 3,mainAxisSpacing: 10,crossAxisSpacing: 10),
                  itemBuilder:  (context, index) =>
                Container(
                  //color: Colors.blue,
                 //  height: 900,
                 // width: 300,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(11),
                   boxShadow: const [
                     BoxShadow(
                       color: Colors.grey,
                       blurRadius: 5,
                       spreadRadius: 0.8
                     )
                   ]
                 ),
                 //padding: EdgeInsets.only(top: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          height: 90,
                          width: MediaQuery.of(context).size.width,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(topRight: Radius.circular(11),topLeft: Radius.circular(11)),
                            child: Image(image: NetworkImage(categoryimg[index]),fit: BoxFit.fill,
                            ),
                          )
                      ),
                      const Spacer(),
                      Center(child: Text(tabitems[index])),
                      const Spacer()
                    ],
                  )
                ),

                ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10,),
          ),

          SliverToBoxAdapter(
            child: Divider(color: Colors.grey[300],
              thickness: 10,),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 5,),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child:Image(image: NetworkImage("https://cutshort.io/_next/image?url=https%3A%2F%2Fcdnv2.cutshort.io%2Fcompany-static%2F5fbb8e931a3650724c7c3e65%2Fuser_uploaded_data%2Fcover_pictures%2Fcompany_cover_pic_UageYEUZ.jpg&w=3840&q=80"),
              fit: BoxFit.fill,) ,
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(height: 5,),
          ),


          SliverToBoxAdapter(
            child: Divider(color: Colors.grey[300],
              thickness: 10,),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 6,),
          ),
          const SliverToBoxAdapter(
            child: Text("\nBest Selling Product",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 50,),
          ),
          Products(),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10,),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:const EdgeInsets.only(left: 10,right: 10) ,
              child: MaterialButton(onPressed: (){},
                color: Colors.green,
                shape: const StadiumBorder(),
              child: const Text("VIEW MORE",style: TextStyle(color: Colors.white),),),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: Colors.grey[300],
              thickness: 10,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child:
                Image(image:   NetworkImage("https://i.ytimg.com/vi/TVzdrtt2BZ4/maxresdefault.jpg"),
                fit: BoxFit.fill,)

            ),
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: Colors.grey[300],
              thickness: 10,
            ),
          ),

          const SliverToBoxAdapter(
            child:
            Text("Our Blog Posts",style: TextStyle(fontSize: 20,color: Colors.black),),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 20,),
          ),

          SliverToBoxAdapter(child: SizedBox(
              height: 150,
              child: Blog())),

          SliverToBoxAdapter(
            child: MaterialButton(onPressed: (){},
            child: const Text("VIEW MORE",style: TextStyle(color: Colors.green,fontSize: 15),)
              ),
          ),
          SliverToBoxAdapter(
            child: Divider(color: Colors.grey[300],
              thickness: 10,),
          ),
          const SliverToBoxAdapter(
            child:
            Text("What Our Customers Say?",style: TextStyle(fontSize: 20,color: Colors.black),),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 300,
              child: CusR(),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  const Center(
                    child: Text("This Kochi-based-farm-to-fork online"
                        "\nmarketplace is connecting farmers"
                        "\ndirectly to customers",textAlign: TextAlign.center,
                      style:TextStyle(fontSize: 20,color: Colors.black) ,)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height:40,
                          child: Image.network(news[0]),
                        ),
                        SizedBox(
                          height:40,
                          child: Image.network(news[1]) ,
                        ),
                        SizedBox(
                          height:40,
                          child:Image.network( news[2]) ,
                        ),
                        SizedBox(
                          height:40,
                          child: Image.network(news[3]) ,
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(color: Colors.grey[300],
              thickness: 10,),
          ),
          SliverToBoxAdapter(
            child:Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Get Know About Us",style: TextStyle(color: Colors.black,fontSize: 20),),
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){}, child: const Text("About Us |",style: TextStyle(color: Colors.grey))),
                          TextButton(onPressed: (){}, child: const Text("Our Farmers  |",style: TextStyle(color: Colors.grey))),
                              TextButton(onPressed: (){}, child: const Text("Blog  ",style: TextStyle(color: Colors.grey))),
                                ]
                              ),


                  const Text("Useful Links",style: TextStyle(color: Colors.black,fontSize: 20)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){}, child: const Text("Privacy Policy |",style: TextStyle(color: Colors.grey))),
                        TextButton(onPressed: (){}, child: const Text("Return & Refund Policy  |",style: TextStyle(color: Colors.grey))),

                      ]
                  ),
                  TextButton(onPressed: (){}, child: const Text("Terms & Condition  ",style: TextStyle(color: Colors.grey))),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FaIcon(FontAwesomeIcons.twitter,color: Colors.grey,size: 30,),
                FaIcon(FontAwesomeIcons.youtube,color: Colors.grey,size: 30,),
                FaIcon(FontAwesomeIcons.facebook,color: Colors.grey,size: 30,),
                FaIcon(FontAwesomeIcons.instagram,color: Colors.grey,size: 30,),

              ],
            )
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              color: Colors.green,
              child:const Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Text("Copyright @ 2021 Farmers Fresh Zone.\nAll Rights Reserved. V 2.40.51",
                  style: TextStyle(color: Colors.white,fontSize: 16),textAlign: TextAlign.center,),
              ) ,
            ),
          ),




      ]
    ),
      bottomNavigationBar: BottomNavigationBar(
       selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(icon: SizedBox(height:20,child: Image(image: NetworkImage("https://blog.farmersfz.com/content/images/2020/01/46920210_2764121090306367_542631111683997696_n.jpg"))),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: "Profile")
        ],
      ),
          );


  }

}