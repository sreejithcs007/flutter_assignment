import 'package:flutter/material.dart';

class HomeShared extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomeSharedState();

}

class HomeSharedState extends State<HomeShared> {
  var img =["assets/image/breakingnews.jpg",
            "assets/image/newsheadlines.jpeg",
            "assets/image/newspaper.jpeg",
            "assets/image/sportsnews.jpeg"];
  var img1 = ["assets/image/deccanchronics.png",
              "assets/image/hindu newspaper.png",
              "assets/image/indianexpress.png",
              "assets/image/mathrubhoomi.jpeg",
              "assets/image/mmanorama.png",
              "assets/image/timesofindia.png",
              ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[50],
        title: Center(child: Text("NEWS",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),)),
      ),
      body: Container(
        color: Colors.red[300],
        child: Column(
          children: [
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context,index)=>
              Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img[index],),fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                     // spreadRadius: 1,
                      blurRadius: 2,

                    )],

                  )
                  ),
              ),
               // child: Image(image: AssetImage(img[index],),fit: BoxFit.fill,),
              )
              ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("NEWSPAPERS",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemBuilder: (context,index) => Card(
                      child: Image(image: AssetImage(img1[index]),fit: BoxFit.fill,),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}