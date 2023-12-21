import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Listv(),));
}

class Listv extends StatelessWidget{
  var imge = ["assets/image/tay.jpeg",
              "assets/image/musicunholy.jpeg",
              "assets/image/musicliftmeup.jpeg",
              "assets/image/musicdax.jpg",
              "assets/image/musicimgood.jpg",
              "assets/image/musicboomin.jpg",
              "assets/image/musicimagin.jpeg",

            ];
  var txt =["Hero","Unholy","Lift Me Up","Depression","I'm Good","Metro Booming","Imagin Dragons"];
  var subtxt = [
    "Taylor Swift",
    "Sam Smith & Kim Petras",
    "Rihana",
    "Dax",
    "David Guetta & Bebe Rexha",
    "Travis Scott,Gunna",
    "Mashmello & Zayn"];
  @override
  Widget build(BuildContext context) {
    return  ListView(
children:List.generate(7, (index) =>
         Padding(
           padding: const EdgeInsets.all(8.0),
           child:  Card(
             color: Colors.black,

               child: Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                         Container(
                           height: 100,
                           width: 100,
                           child: ClipRRect(
                                           borderRadius: BorderRadius.vertical(top: Radius.circular(10.0),bottom:Radius.circular(10.0)),
                               child: Image(image: AssetImage(imge[index]) ,fit: BoxFit.fill,)
                                         ),
                         ),


                        Container(
                          alignment: Alignment(-1, 0),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(txt[index],style: GoogleFonts.ubuntu(color: Colors.pink[100],fontWeight: FontWeight.bold,fontSize: 20),),
                              Text(subtxt[index],style: TextStyle(color: Colors.white,fontSize: 15),),
                            ],
                          ),
                        ),
                            Container(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children:[

                              Icon(Icons.star_border,color: Colors.pink[100],),
                                                         Icon(Icons.download_outlined,color: Colors.pink[100],),
                                ]

                              ),
                            )




                      ],
                    ),
               ),
                ),
              ),
            ),



    );
  }

}