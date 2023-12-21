import 'package:flutter/material.dart';
import 'package:flutter_assignment/tourism/india.dart';
import 'package:flutter_assignment/tourism/italy.dart';
import 'german.dart';
// void main(){
//   runApp(MaterialApp(home: TourCustom(),));
// }

class TourCustom extends StatelessWidget{
  var img =["assets/image/germanyy.jpg","assets/image/france.jpg","assets/image/italy.jpg",
           "assets/image/Main_Gate_-_Taj_Mahal.jpeg"];
  var txt = ["Germany","France","Italy","India"];
  var Guid = [Germany(),Italy(),India()];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(4, (index) =>
      Container(
        padding: EdgeInsets.only(top: 10,bottom: 10),
        child: Stack(
          children: [Image(image: AssetImage(img[index],),
          ),

            Positioned(
              top: 200,
              bottom: 0,
              child: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Guid[index]));
                  },
              icon: Text(txt[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
            )


          ],
        ),
      )
    ),
    );

  }


}