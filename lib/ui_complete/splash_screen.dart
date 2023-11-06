import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';

void main(){
  runApp(MaterialApp(home: Splash(),));
}
class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState()  => _Splashstate();

}

class _Splashstate extends State<Splash>{

@override
  void initState() {
    Timer(Duration(seconds: 4), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body:Center(
      child: Lottie.asset("assets/animation/loading.json") ,
    )
  );
  }

}