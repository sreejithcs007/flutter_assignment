import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui_complete/home_page.dart';
import 'package:flutter_assignment/ui_complete/signuo.dart';
import 'package:flutter_assignment/ui_complete/welcome_page.dart';

class Login extends StatelessWidget{
  String email = "admin@123";
  String password = "admin";
  final email_controller = TextEditingController();
  final pas_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        },
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        elevation: 0,
      ),
      
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Text("Login",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,bottom: 20),
                child: Text("Welcome back ! Login with your credentials",
                style: TextStyle(color: Colors.grey ,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  controller: email_controller,
                  decoration: InputDecoration(
                    label: Text("Email"),
                  hintText: "abc@gmail.com",
                  border: OutlineInputBorder()
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  controller: pas_controller,
                  decoration: InputDecoration(
                  hintText: "......",
                  label: Text("Password") ,
                  border: OutlineInputBorder()
                ),),
              ),

              MaterialButton(
                height: 50,
                  minWidth: 300,
                color: Colors.indigoAccent,
                onPressed: (){
                  if(email == email_controller.text && password == pas_controller.text ){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Welcome()));
                  }
                  email_controller.text ="";
                  pas_controller.clear();
                },
                shape: StadiumBorder(),
              child: Text("Login",
              style: TextStyle(color: Colors.white),),
              ),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Signup() ));
              },
                  child: RichText(text: TextSpan(
                    style: TextStyle(color: Colors.black),
                      children: [TextSpan(text: "Don't have an account?",
                      style: TextStyle(fontSize: 15)),
                      TextSpan(text: "Sign Up",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15))
                      ]

                  )
                  )
              )
            ],
          ),
        ),
      ),
    );
  }

}