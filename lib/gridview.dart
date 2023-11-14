import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Gridview1(),));
}
class Gridview1 extends StatelessWidget{
  var ic =[Icons.home,Icons.notification_important_outlined,Icons.linked_camera,Icons.stars_sharp,Icons.wifi,
  Icons.outlined_flag,Icons.call,Icons.email,Icons.map,Icons.cable_outlined,Icons.mic_off_sharp,Icons.file_open_sharp];

  var clr =[Colors.blue,Colors.orange,Colors.green,Colors.pink,Colors.red,Colors.blueAccent,Colors.purple,
             Colors.teal[800],Colors.yellow,Colors.deepOrange[900],Colors.pinkAccent,Colors.greenAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 90,
        mainAxisSpacing: 20,crossAxisSpacing: 20),
          children: List.generate(12, (index) => Card(color: clr[index],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
            ),
            child: Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(ic[index],size: 50,color: Colors.black26,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Heart\nShaker",
                    style: TextStyle(color: Colors.black,fontSize: 20),),
                  ),
                ],
              ),
            ),
          )
          )
            ),
      ),
        );


  }


}