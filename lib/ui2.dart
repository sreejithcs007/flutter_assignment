import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Screen2(),));
}
class Screen2 extends StatelessWidget{
  var img = ["assets/image/apple.png","assets/image/mango.png","assets/image/banana.png","assets/image/grape.png","assets/image/watermelon.png",
    "assets/image/kiwi.png","assets/image/orange.png"];
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
               (context, index) =>
                  Card(

                       color: Colors.blueGrey[200],
                     child:Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         SizedBox(
                           child: Image(image: AssetImage(img[index] ),
                           height: 100,width: 100,
                             fit: BoxFit.fill,

                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 5.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,

                             //crossAxisAlignment: CrossAxisAlignment.start,

                             children: [
                            Center(
                              child: RichText(text: TextSpan(

                                children: [TextSpan( text:("Name :"),style: TextStyle(color: Colors.black)),
                                  TextSpan(text: (" ${txt[index]}\n"),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                  TextSpan(text:("Unit :"),style: TextStyle(color: Colors.black)),
                                  TextSpan(text: (" ${unt[index]}\n"),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                  TextSpan(text:("Price : \$"),style: TextStyle(color: Colors.black)),
                                  TextSpan(text: ("${prz[index]}\n"),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),]

                              )),
                            )



                        ],
                      ),
                         ),


                           MaterialButton(onPressed: (){},
                                //shape: StadiumBorder(),
                               color: Colors.blueGrey[900],
                              height : 30,
                              minWidth: 120,
                               child: Text("Add to cart",
                               style: TextStyle(color: Colors.white),),




                          ),


                    ],
              ) ,
            ),
                 ),
               )





    );
  }


}