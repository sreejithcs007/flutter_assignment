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
      body: Container(
        child: Column(
          children: [
            Text("Popular",style: GoogleFonts.ubuntu(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)
            ),
            ListView(
              children: places.map((e) => GestureDetector(
                child: Card(
                  child: Stack(
                    children: [
                      Image.asset(e["image"]),
                    Positioned(
                        top: 200,
                        bottom: 0,
                        child: Text(e["name"]))
                    ],
                  ),
                ),
                onTap: gotodetails(context,e["id"]),
              )
              ).toList(),
            )

          ],
        ),
      ),


    );
  }

  gotodetails(BuildContext context, id, ) {

    Navigator.pushNamed(context, "details",arguments: id);
  }


}