import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: MusicUi1(),
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    //themeMode: ThemeMode.light,
  )
  );
}

class MusicUi1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : CustomScrollView(
      slivers: [
      SliverAppBar(
      floating: false,
      title: Center(
        child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Playlist",
                style: GoogleFonts.kanit(fontSize: 30,color: Colors.pink[100],),),
            ],
          ),
        ),

       // titleSpacing: 20,

        bottom: PreferredSize(preferredSize: const Size(90, 80),
          // child:  Padding(
          //   padding: const EdgeInsets.only(bottom: 20.0,top: 1),
             child: TextField(
                     decoration: InputDecoration(
             filled: true,
             fillColor: Colors.grey[850],

             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(30),
             ),

             hintText: "Search...",
             hintStyle: TextStyle(color: Colors.pink[100]),

             suffixIcon: const Icon(Icons.search),
             suffixIconColor : Colors.pink[100],


                     ),

                   ),
          ),


    ),


      SliverGrid.count(crossAxisCount: 2, mainAxisSpacing: 40,crossAxisSpacing: 40,
          //padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
          children:const [
            Padding(
              padding: EdgeInsets.only(left: 10.0,top: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                child: Image(image: AssetImage("assets/image/spotify1.jpeg"),
                    fit: BoxFit.fill),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0,top: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                child: Image(image: AssetImage("assets/image/spotify (2).jpeg"),
                    fit: BoxFit.fill),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0,),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                child: Image(image: AssetImage("assets/image/spotify 3.jpeg"),
                    fit: BoxFit.fill),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0,),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                child: Image(image: AssetImage("assets/image/spotify4.jpeg"),
                    fit: BoxFit.fill),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0,),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                child: Image(image: AssetImage("assets/image/spotify5.jpeg"),
                    fit: BoxFit.fill),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(right: 10.0,),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                child: Image(image: AssetImage("assets/image/spotify6.jpeg"),
                    fit: BoxFit.fill),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0,),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                child: Image(image: AssetImage("assets/image/spotify7.jpeg"),
                    fit: BoxFit.fill),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0,),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                child: Image(image: AssetImage("assets/image/spotify8.jpeg"),
                    fit: BoxFit.fill),
              ),
            ),
          ],
        ) ,
      ],
      ),
        bottomNavigationBar:

        BottomNavigationBar(
          //fixedColor: Colors.white,

          //backgroundColor: Colors.black,
            elevation: 0,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.white,),
                backgroundColor: Colors.black,
                label: "",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.search,color: Colors.white,),
                label: "",
                backgroundColor: Colors.black,
              ),


              BottomNavigationBarItem(
                icon: Text("playlist",
                    style:GoogleFonts.kanit(color: Colors.pink[100],fontSize: 20)
                ),
                label: "",
                backgroundColor: Colors.black,
              ),

              const BottomNavigationBarItem(
                icon: Icon(Icons.menu,color: Colors.white,),
                label: "",
                backgroundColor: Colors.black,
              ),

            ]) ,
    );
  }
}