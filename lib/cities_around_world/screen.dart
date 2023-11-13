import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Screen(),));
}
class Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Center(
          child: Text("Cities Around World",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
        ),
      ),

       body: ListView(
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 20.0),
             child: Card(
               color: Colors.orange,
               child: Container(
                 height: 100,
                  child:Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Image(image: NetworkImage("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcReGGf2wP8t0QigiiSN4pfvNhVQFxUh5PaILomwBW8RdzyfLUm9"),
                          fit: BoxFit.fill,
                          height: 100,
                          width: 180,),
                      ),
                    Container(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Delhi ",
                          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                          RichText(text: const TextSpan(
                            children: [TextSpan(text:"India\n",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: "Population : 32.9 mil",
                            style: TextStyle(color: Colors.black))]
                          ))

                        ],
                      )
                    )
                    ],
                  )
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 20.0),
             child: Card(
               color: Colors.orange,
               child: Container(
                   height: 100,
                   child:Row(
                     children: [
                       const Padding(
                         padding: EdgeInsets.only(left: 8.0),
                         child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuB22Sd8fdhiIRTdBveF_tZ0wo0OW_HzHW5Cxt9LZJuZRa2gv4"),
                           fit: BoxFit.fill,
                           height: 100,
                           width: 180,),
                       ),
                       Container(
                           padding: const EdgeInsets.only(left: 20.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const Text("Finland ",
                                 style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                               RichText(text: const TextSpan(
                                   children: [TextSpan(text:"Europe\n",
                                       style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                                     TextSpan(text: "Population : 5.54 mil",
                                         style: TextStyle(color: Colors.black))]
                               ))

                             ],
                           )
                       )
                     ],
                   )
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 20.0),
             child: Card(
               color: Colors.orange,
               child: Container(
                   height: 100,
                   child:Row(
                     children: [
                       const Padding(
                         padding: EdgeInsets.only(left: 8.0),
                         child: Image(image: NetworkImage("https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTrrY74qGSydl78GDBjHNchbEK5JRObKpRtDSsytPQiob6x9wn2"),
                         fit: BoxFit.fill,
                         height: 100,
                         width: 180,),
                       ),
                       Container(
                           padding: const EdgeInsets.only(left: 20.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const Text("London ",
                                 style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                               RichText(text: const TextSpan(
                                   children: [TextSpan(text:"UK\n",
                                       style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                                     TextSpan(text: "Population : 8.8mil",
                                         style: TextStyle(color: Colors.black))]
                               ))

                             ],
                           )
                       )
                     ],
                   )
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 20.0),
             child: Card(
               color: Colors.orange,
               child: Container(
                   height: 100,
                   child:Row(
                     children: [
                       const Padding(
                         padding: EdgeInsets.only(left: 8.0),
                         child: Image(image: NetworkImage("https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/39/9e/3a.jpg"),
                           fit: BoxFit.fill,
                           height: 100,
                           width: 180,),
                       ),
                       Container(
                           padding: const EdgeInsets.only(left: 20.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const Text("Vancouver",
                                 style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                               RichText(text: const TextSpan(
                                   children: [TextSpan(text:"Canada\n",
                                       style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                                     TextSpan(text: "Population : 2.6 mil",
                                         style: TextStyle(color: Colors.black))]
                               ))

                             ],
                           )
                       )
                     ],
                   )
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 20.0),
             child: Card(
               color: Colors.orange,
               child: Container(
                   height: 100,
                   child:Row(
                     children: [
                       const Padding(
                         padding: EdgeInsets.only(left: 8.0),
                         child: Image(image: NetworkImage("https://media.istockphoto.com/id/1158037142/photo/statue-of-liberty-in-front-of-the-manhattan-skyline-with-seagulls-and-boats.jpg?s=612x612&w=0&k=20&c=Je_fGHxQ_hDEjlh8jFqS2uphJa3XmF_kI5jAfoZpWBk="),
                            fit: BoxFit.fill,
                           height: 100,
                           width: 180,),
                       ),
                       Container(
                           padding: const EdgeInsets.only(left: 20.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const Text("Newyork ",
                                 style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                               RichText(text: const TextSpan(
                                   children: [TextSpan(text:"USA\n",
                                       style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                                     TextSpan(text: "Population : 3.9 mil",
                                         style: TextStyle(color: Colors.black))]
                               ))

                             ],
                           )
                       )
                     ],
                   )
               ),
             ),
           )
         ],
       )
    );
    }
}