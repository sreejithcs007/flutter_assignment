import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Splash()));
}
class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/image/snapchatlogo.png"),
              height: 120, width: 120,),
            Text("Snapchat",
            style: GoogleFonts.shipporiMincho(fontSize: 30 ,
              color: Colors.black,
              fontWeight: FontWeight.bold),
            )
          ],
        )
      ),
    );
  }
}