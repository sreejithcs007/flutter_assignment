import 'package:flutter/material.dart';
import 'package:flutter_assignment/musicplayer/carouselpart.dart';
import 'package:flutter_assignment/musicplayer1/listt.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'listpart.dart';
void main(){
  runApp(MaterialApp(home: Mp(),
    // theme: ThemeData.dark(),
  )
  );
}

class Mp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child:
            // Padding(
            //   padding: const EdgeInsets.only(top: 10.0),
            //   child:
            Text("Musicfy",
              style: GoogleFonts.ubuntu(color: Colors.pink[100],fontSize: 30,fontWeight: FontWeight.bold),),
          )),
      // )
      body:
      Container(
        color: Colors.black,
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 200,bottom: 20),
              child: Text("Suggested playlist",
                style: GoogleFonts.ubuntu(color: Colors.pink[200],
                    fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: caosel(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 160,bottom: 10),
              child: Text("Recommended for you",style: GoogleFonts.ubuntu(color: Colors.pink[100],
                  fontSize: 20,fontWeight: FontWeight.bold)
              ),
            ),
            Expanded(
              child:
              Container(
                //color:Colors.blue,
                height: MediaQuery.of(context).size.height,
                child: Listv1(),
              ),
            ),

          ],

        ),

      ),

      bottomNavigationBar: BottomNavigationBar(
          elevation: 8,
          //fixedColor: Colors.black,
          //backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Text("Home",style: GoogleFonts.ubuntu(color: Colors.pink[100],fontSize: 20)),
              label: "",backgroundColor: Colors.black,
            ),

            BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,) ,label: "",
              // backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(icon: Icon(Icons.book,color: Colors.white,),label: "",//backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz,color: Colors.white,),label: "",//backgroundColor: Colors.black,
            )


          ]
      ),
    );
  }


}