import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'datapart.dart';
import 'details.dart';


void main(){
  runApp(MaterialApp(home: Tourismpage(),
   routes: {"details":(context) => Details()},
  ));
}
class Tourismpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple[900],
      ),
      body: Column(
       // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Popular",style: GoogleFonts.ubuntu(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: places.map((e) => GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      // clipBehavior: Clip.antiAlias,
                      children: [
                         Container(
                           height: 250,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(e["image"]),
                      fit: BoxFit.cover,
                    ),
                                      ),
                         ),

                      Positioned(
                          top: 210,
                          left: 10,
                          bottom: 0,
                          child: Text(e["name"],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))
                      ],
                    ),
                  ),
                  onTap:()=> gotodetails(context,e["id"]),
                )
                ).toList(),
              ),
            ),
          )

        ],
      ),


    );
  }

  gotodetails(BuildContext context, id, ) {

    Navigator.pushNamed(context, "details",arguments: id);
  }


}