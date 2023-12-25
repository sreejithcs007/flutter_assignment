import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home: Blog(),));
// }
List<Map<String,dynamic>>blog = [
  {
    "image":
    "https://blog.farmersfz.com/content/images/2022/08/marcelo-leal-k7ll1hpdhFA-unsplash.jpg",
    "text": "Control Blood Pressure, the right way!",
  },
  {
    "image":
    "https://blog.farmersfz.com/content/images/2022/07/mockup-graphics-l55IGtwI8mI-unsplash.jpg",
    "text": "Five reasons why Broccoli should be a part of your diet!"
  },
  {
    "image":
    "https://blog.farmersfz.com/content/images/2022/07/towfiqu-barbhuiya-C-zwLtPSErc-unsplash.jpg",
    "text": "Five tips that prevent you from going"
  }

];

class Blog extends StatefulWidget{
  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.horizontal,
      //shrinkWrap: true,
      slivers: [
        SliverList.builder(
            itemCount: blog.length,
            itemBuilder: (context,index)=>
          SizedBox(
            height: 200,
            // color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0,left: 5,right: 5,bottom: 5),
              child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    //border: Border.all(color: Colors.blueAccent),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 5
                      )
                    ],


                  ),
                height: 250,
                width: 200,
                //color: Colors.blue,
                child:Column(
                  children: [
                    SizedBox(

                      height: 50,
                     width: MediaQuery.of(context).size.width,

                     child: Image(image: NetworkImage(blog[index]["image"]),fit: BoxFit.fill,),
                    ),
                    Text(blog[index]["text"],style: const TextStyle(fontSize: 15,color: Colors.black),),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("a year ago",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        Icon(Icons.arrow_forward,color: Colors.green,)
                      ],
                    )
                  ],
                )

              ),
            ),
          ),
          )


    ]
    );
  }
}