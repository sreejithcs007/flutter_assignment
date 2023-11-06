import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui_complete/home_page.dart';
import 'package:flutter_assignment/ui_complete/login.dart';
import 'package:flutter_assignment/ui_complete/welcome_page.dart';

class Signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text("Sign up",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
              Text("Create an Account,its free",
              style: TextStyle(fontSize: 15,color: Colors.grey),),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder()
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  obscureText : true,
                    obscuringCharacter: "*" ,
                    decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder()
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  obscureText : true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                  labelText: "Confirm Password",
                  border: OutlineInputBorder()
                ),),
              ),
              MaterialButton(
                height: 60,
                minWidth: 350,
                color: Colors.red,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));
                },
                shape: StadiumBorder(),
              child: Text("Sign Up",
              style: TextStyle(color: Colors.black),),),

              Padding(
                padding: const EdgeInsets.all(30.0),
                child:TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                },
                    child:RichText(text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [TextSpan(text: "Already have an account?",
                  style: TextStyle(fontSize: 15)),
                  TextSpan(text: "Login",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))]
                )

                    ),
              )

          ),
          ]
        ),
      ),
    )
    );
  }


}