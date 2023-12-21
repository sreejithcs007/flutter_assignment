import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// void main(){
//   runApp(MaterialApp(home: Germany(),));
// }
class Germany extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
             child: Image(image: AssetImage("assets/image/germanyy.jpg")),

            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 10,bottom: 20),
              child: Text("Germany",style: GoogleFonts.ubuntu(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 8,right: 8),
              child: Text("Germany, country of north-central Europe, traversing the continent’s main "
                  "physical divisions, from the outer ranges of the Alps northward across the varied landscape "
                  "of the Central German Uplands and then across the North German Plain."
                  "Climate action is a top priority in Germany. The Federal Government aims to be a driving force in the "
                  "energy transformation both at home and abroad, supporting the expansion of renewable"
                  " energy sources."
                  "The official language of Germany is German, "
                  "with over 95% of the population speaking German as their first language."
                  "Germany's climate is temperate and marine in the west and humid continental in the east.",
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
                    image: DecorationImage(image: AssetImage("assets/image/germany1.jpg"),fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("assets/image/germany2.jpg"),fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("assets/image/germany3.jpg"),fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("assets/image/germany4.jpg"),fit: BoxFit.fill),
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