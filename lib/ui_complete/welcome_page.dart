import 'package:flutter/material.dart';

class Welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text("Welcome ",
        style: TextStyle(color: Colors.white,fontSize: 50,),),
      ) ,
    );
  }


}