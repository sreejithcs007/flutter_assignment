import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom.dart';
void main(){
  runApp(MaterialApp(home: Tourism(),debugShowCheckedModeBanner: false,));
}

class Tourism extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
        ),
        body:
        Container(

          child:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Popular",style: GoogleFonts.ubuntu(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
              ),
             Expanded(
               child: Container(
                 height: MediaQuery.of(context).size.height,
                   //color: Colors.blue,
                   child: TourCustom()
               ),
             ),


            ],
        ),


      ),

    );
  }
  
  
}