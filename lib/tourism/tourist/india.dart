import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// void main(){
//   runApp(MaterialApp(home: India(),));
// }
class India extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image(image: AssetImage("assets/image/Main_Gate_-_Taj_Mahal.jpeg")),

            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 10,bottom: 20),
              child: Text("India",style: GoogleFonts.ubuntu(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 8,right: 8),
              child: Text("India, country that occupies the greater part of South Asia. India is made up of 28 states and "
                  "eight union territories, and its national capital is New Delhi, built in the 20th century just south of "
                  "the historic hub of Old Delhi to serve as India’s administrative centre. Its government is a constitutional"
                  "republic that represents a"
                  " highly diverse population consisting of thousands of ethnic groups and hundreds of languages."
                  "India is a home to the finest architectural heritage,"
                  " serene ghats, spectacular landscapes and largest tiger reserve",
                style: GoogleFonts.ubuntu(fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10.0,bottom: 10),
              child: Text("Places to visit",style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold ,fontSize: 20),),
            ),
            CarouselSlider(items: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("assets/image/india1.jpeg"),fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("assets/image/india2.jpeg"),fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("assets/image/india3.jpg"),fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("assets/image/india4.jpg"),fit: BoxFit.fill),
                  ),
                ),
              ),

            ],
                options: CarouselOptions(
                    height: 150,
                    autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                )
            ),
            Center(
              child: MaterialButton(onPressed: (){},
                padding: EdgeInsets.only(left: 10.0,right: 10),
                shape: StadiumBorder(),
                color: Colors.deepPurple[800],
                minWidth: 400,
                child: Text("Press to Explore"),),
            )
          ],
        ),
      ),

    );
  }


}