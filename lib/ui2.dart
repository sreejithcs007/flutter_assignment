import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Screen2(),));
}
class Screen2 extends StatelessWidget{
  var img = ["assets/image/apple.jpg","assets/image/mango.jpg","assets/image/banana.jpg","assets/image/grape.jpg","assets/image/watermelon.jpg",
    "assets/image/kiwi.jpg","assets/image/orange.jpg"];
  var txt = ["Apple","Mango","Banana","Grape","water...","Kiwi","Orange"];
  var unt = ["kg","Doz","Doz","Kg","Kg","pc","Doz"];
  var prz = ["20","30","43","8","15","22","12"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("Product List")),
        actions: [
          Icon(Icons.shopping_cart)
        ],
      ),
       body:
       ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
               childCount: 7,
               (context, index) => Container(
                 height: 100,
                 child: Padding(
                   padding: const EdgeInsets.only(left:5.0,right: 5),
                   child: Card(

                       color: Colors.blueGrey[200],
                     child:Row(
                       children: [Padding(padding: const EdgeInsets.only(left: 1,right: 1),),
                         Image(image: AssetImage(img[index] ),
                         height: 150,width: 150,
                         fit: BoxFit.fill,),
                         Padding(
                           padding: const EdgeInsets.only(left: 5.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             crossAxisAlignment: CrossAxisAlignment.start,

                             children: [
                            RichText(text: TextSpan(

                              children: [TextSpan( text:("Name :"),style: TextStyle(color: Colors.black)),
                                TextSpan(text: (" ${txt[index]}\n"),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                TextSpan(text:("Unit :"),style: TextStyle(color: Colors.black)),
                                TextSpan(text: (" ${unt[index]}\n"),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                TextSpan(text:("Price : \$"),style: TextStyle(color: Colors.black)),
                                TextSpan(text: ("${prz[index]}\n"),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),]

                            ))



                        ],
                      ),
                         ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 3,right: 8),
                            child: MaterialButton(onPressed: (){},
                                //shape: StadiumBorder(),
                               color: Colors.blueGrey[900],
                                 height : 40,
                              minWidth: 100,
                               child: Text("Add to cart",
                               style: TextStyle(color: Colors.white),),



                      ),
                          ),
                        ),

                    ],
              ) ,
            ),
                 ),
               )
    )

          )


    );
  }


}