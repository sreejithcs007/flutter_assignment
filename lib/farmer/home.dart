import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: FarmerH(),));
}

class FarmerH extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => FarmerHState();
  }

class FarmerHState extends State<FarmerH>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: CustomScrollView(
     slivers: [
       SliverAppBar(title: Text("FARMERS FRESH ZONE",
         style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
       ),
         backgroundColor: Colors.green,
         bottom: PreferredSize(preferredSize: Size(70, 70),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child:
               // Container(
               //   width: 470,
               //   height: 40,
               //   child:
                 SizedBox(
                   width: 540,
                   height: 40,
                   child: TextField(
                     decoration: InputDecoration(
                       contentPadding: EdgeInsets.symmetric(vertical: 10,),
                       filled: true,
                       fillColor: Colors.white,
                       prefixIcon: Icon(Icons.search),
                       hintText: "Search for Vegetables and fruits...",
                       border: OutlineInputBorder(),
                     ),
                   ),
                 ),
               ),
             ) ),
         //actions: [DropdownButton(items: [], onChanged: onChanged)],
       // ),

     ],
   ),
     
    );
  }

}

