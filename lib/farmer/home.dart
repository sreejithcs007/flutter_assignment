import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_assignment/farmer/main.dart';
void main(){
  runApp(MaterialApp(home: Farmer(),));
}

class Farmer extends StatefulWidget{
  @override
  State<Farmer> createState() => _FarmerState();
}

class _FarmerState extends State<Farmer> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Mainui()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        color: Colors.green,
        child: Center(
          child:Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 29),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(image: AssetImage("assets/image/farmersplash.jpg"),fit: BoxFit.fill)
              ),
            ),
          ) ,
        ),
      ),
    );
  }
}