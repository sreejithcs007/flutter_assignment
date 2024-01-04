import 'package:flutter/material.dart';
import 'package:flutter_assignment/sharedPreference/home.dart';
import 'package:flutter_assignment/sharedPreference/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: Loginshared(),));
}

class Loginshared extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => LoginsharedState();

}

class LoginsharedState extends State<Loginshared> {
  final valid = GlobalKey<FormState>();
  final username = TextEditingController();
  final password = TextEditingController();
  bool shwpass = true;
  late SharedPreferences pref;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: Form(
        key: valid,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("LOGIN PAGE  ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: username,
                  validator: (email){
                    if(email!.isEmpty || !email.contains("@") || !email.contains("gmail.com")){
                      return "MUST CONTAIN @gmail.com";
                    }
                  },

                  decoration: InputDecoration(
                    labelText: "USERNAME",
                    hintText: "***@gmail.com",
                      filled: true,
                      fillColor: Colors.indigo[200],
                    prefixIcon: const Icon(Icons.person),
                    prefixIconColor: Colors.red[100],
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))

                  ),

                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: password,
                validator: (pass){
                  if(pass!.isEmpty || pass.length < 6){
                    return "ATLEAST 6 CHARATER MUST BE THERE";
                  }
                },
                obscureText: shwpass,
                obscuringCharacter: "#",

                decoration: InputDecoration(
                  labelText: "PASSWORD",
                  hintText: "...........",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  filled: true,
                  fillColor: Colors.indigo[200],
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      if(shwpass == true){
                        shwpass =false;
                      }
                      else{
                        shwpass = true;
                      }
                    });
                  },
                      icon: shwpass == true ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility)
                  )
                )

                ),
            ),

              MaterialButton(onPressed: (){
                final validkey = valid.currentState!.validate();
                if(validkey == true){
                  checkdata();
                }
                username.clear();
                password.clear();
              },
                color: Colors.deepOrange[50],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                child: const Text("LOGIN"),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Reg()));
              },
                child: RichText(text: const TextSpan(style: TextStyle(color: Colors.black,fontSize: 15),
                    children: [
                      TextSpan(text: "DON'T HAVE AN ACCOUNT "),
                      TextSpan(text: "SIGN UP!!",style: TextStyle(color: Colors.red))

                ])),
              )


            ],
          ),
        ),
      ) ,
    );
  }

  void checkdata() async{
    String lname = username.text;
    String lpass = password.text;
    pref = await SharedPreferences.getInstance();
    String? stored_name = pref.getString('uname');
    String? stored_pass = pref.getString('upass');
    if(stored_name == lname && stored_pass == lpass){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeShared()));
    }

  }
}