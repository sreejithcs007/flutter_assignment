import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'datapart.dart';

class Details extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  final tappedid = ModalRoute.of(context)?.settings.arguments;
  final view = places.firstWhere((e) => e["id"] == tappedid);
    return Scaffold(
      body:
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(view["image"]),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 10,bottom: 20),
              child: Text(view["name"],style: GoogleFonts.ubuntu(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Text(view["description"], style: GoogleFonts.ubuntu(fontSize: 15)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10.0,bottom: 10),
              child: Text("Place to Visit",style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold ,fontSize: 20),),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.black ,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage(view["cimage1"]),fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage(view["cimage2"]),fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage(view["cimage3"]),fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 10),
                        child: Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage(view["cimage4"]),fit: BoxFit.fill),
                          ),
                        ),
                      ),


                    ],

                  ),
                ),
              ),
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