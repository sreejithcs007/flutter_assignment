import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// void main(){
//   runApp(MaterialApp(home: Italy(),));
// }
class Italy extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image(image: AssetImage("assets/image/italy.jpg")),

            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 10,bottom: 20),
              child: Text("Italy",style: GoogleFonts.ubuntu(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 8,right: 8),
              child: Text("Italy, country of south-central Europe, occupying a peninsula that juts"
                  " deep into the Mediterranean Sea. Italy comprises some of the most varied and scenic landscapes on "
                  "Earth and is often described as a country shaped like a boot. At its broad top stand the Alps, "
                  "which are among the world’s most rugged mountains. Italy’s highest points are along Monte Rosa, "
                  "which peaks in Switzerland, and along Mont Blanc, which peaks in France. The western Alps overlook "
                  "a landscape of Alpine lakes and glacier-carved valleys that stretch down to the Po River and the Piedmont. "
                  "Tuscany, to the south of the cisalpine region, is perhaps the country’s best-known region.",
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
                    image: DecorationImage(image: AssetImage("assets/image/italy1.jpeg"),fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("assets/image/italy2.jpeg"),fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("assets/image/italy3.jpeg"),fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("assets/image/italy4.jpeg"),fit: BoxFit.fill),
                  ),
                ),
              ),

            ],
                options: CarouselOptions(
                  height: 150,
                    autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  //autoPlayAnimationDuration: Duration(milliseconds: 1)
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