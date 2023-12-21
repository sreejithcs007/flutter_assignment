import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Listv1(),));
}

class Listv1 extends StatelessWidget{
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
          SizedBox(
            height: 100,
              width: 100,
            child: ListTile(
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(10.0),bottom:Radius.circular(10.0))),
              //tileColor: Colors.black,
              leading: Container(

                  width: 50,
                  height: 100,
                  child: Image(image: AssetImage(imge[index]),fit: BoxFit.cover,)),
              title: Text(txt[index],style: GoogleFonts.ubuntu(color: Colors.pink[100],fontWeight: FontWeight.bold,fontSize: 20)),
              subtitle: Text(subtxt[index],style: TextStyle(color: Colors.white,fontSize: 15)),
              trailing: SizedBox(
                width: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.star_border,color: Colors.pink,),
                      Icon(Icons.download_outlined,color: Colors.pink,)
                    ],
                  ),
              ),
              ),
          ),




      )
    );
  }

}