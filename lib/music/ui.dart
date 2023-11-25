import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: MusicUi(),
  theme: ThemeData.dark(),
  //themeMode: ThemeMode.light,
  )
  );
}

class MusicUi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [Scaffold(
        appBar: AppBar(
         // backgroundColor: Colors.black,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text("Playlist",
              style: GoogleFonts.kanit(fontSize: 30,color: Colors.pink[100],fontWeight: FontWeight.bold),

                      ),
            ),
          ),

          bottom: PreferredSize(preferredSize: const Size(60, 60), child:  TextField(

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

          ),),

        ),




        body: Container(
          padding: EdgeInsets.only(top: 10),

         // color: Colors.black,
          child:GridView.count(crossAxisCount: 2, mainAxisSpacing: 40,crossAxisSpacing: 40,
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            children:const [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                child: Image(image: AssetImage("assets/image/spotify1.jpeg"),
                    fit: BoxFit.fill),
              ),
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                child: Image(image: AssetImage("assets/image/spotify (2).jpeg"),
                    fit: BoxFit.fill),
              ),
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                child: Image(image: AssetImage("assets/image/spotify 3.jpeg"),
                    fit: BoxFit.fill),
              ),
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                child: Image(image: AssetImage("assets/image/spotify4.jpeg"),
                    fit: BoxFit.fill),
              ),
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                child: Image(image: AssetImage("assets/image/spotify5.jpeg"),
                    fit: BoxFit.fill),
              ),
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                child: Image(image: AssetImage("assets/image/spotify6.jpeg"),
                    fit: BoxFit.fill),
              ),
               ClipRRect(
                 borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                 child: Image(image: AssetImage("assets/image/spotify7.jpeg"),
                 fit: BoxFit.fill),
               ),
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0),bottom:Radius.circular(20.0) ),
                child: Image(image: AssetImage("assets/image/spotify8.jpeg"),
                    fit: BoxFit.fill),
              ),




                        ],
                      ),

                    ) ,
        bottomNavigationBar:

        BottomNavigationBar(
          //fixedColor: Colors.white,

            //backgroundColor: Colors.black,
            elevation: 0,
            items: [

          BottomNavigationBarItem(
           icon: Icon(Icons.home,color: Colors.white,
           ),
            backgroundColor: Colors.black,


            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.white,),
            label: "",
            backgroundColor: Colors.black,
          ),


              BottomNavigationBarItem(

                icon: Text("playlist",
                    style:GoogleFonts.kanit(color: Colors.pink[100],fontSize: 20)

                  //TextStyle(color: Colors.pink[900]),

                ),
                label: "",
                backgroundColor: Colors.black,
              ),






          BottomNavigationBarItem(
            icon: Icon(Icons.menu,color: Colors.white,),
            label: "",
            backgroundColor: Colors.black,
          ),







        ]) ,









      ),
    ]
    );
  }


}