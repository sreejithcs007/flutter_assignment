import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home: caosel(),));
// }

class caosel extends StatelessWidget{
  var img = [AssetImage("assets/image/spotify1.jpeg"),
             AssetImage("assets/image/spotify (2).jpeg"),
             AssetImage("assets/image/spotify 3.jpeg"),
             AssetImage("assets/image/spotify4.jpeg"),
             AssetImage("assets/image/spotify5.jpeg"),
             AssetImage("assets/image/spotify6.jpeg"),
             AssetImage("assets/image/spotify7.jpeg")];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(items:
    List.generate(7, (index) =>
    Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8),
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: img[index], fit: BoxFit.fill)
        ),
        // height: 50,
        //
        //
        //
        // child: ClipRRect(borderRadius: BorderRadius.vertical(top: Radius.circular(10.0),bottom:Radius.circular(10.0) ),
        //   child: Image(image: img[index], fit: BoxFit.fill),
        //
        // ),
      ),
    )),

        options: CarouselOptions(
          autoPlay: true,
          height:  200,
          viewportFraction: 0.5,
          animateToClosest: false,
          pageSnapping: false,
         // padEnds: false,
          aspectRatio: 16/9,
          enlargeCenterPage: false
        ));
  }

}