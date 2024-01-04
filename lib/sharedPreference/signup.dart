import 'package:flutter/material.dart';
import 'package:flutter_assignment/sharedPreference/login.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Reg extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => RegState();

}

class RegState extends State<Reg> {
  final valid = GlobalKey<FormState>();
  final username1 = TextEditingController();
  final password1 = TextEditingController();
  final password2 = TextEditingController();
  String? pwd;
  bool shwpass1 = true;
  bool shwpass2 = true;
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      body: Form(
        key: valid,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("REGISTRATION",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                          controller: username1,
                          validator: (email){
                            if(email!.isEmpty || !email.contains("@") || !email.contains("gmail.com")){
                              return "MUST CONTAIN @gmail.com";
                            }
                          },

                          decoration: InputDecoration(

                              hintText: "USERNAME",
                              prefixIcon: Icon(Icons.person,color: Colors.black,),
                              prefixIconColor: Colors.red[400],
                              filled: true,
                              fillColor: Colors.amber[50],

                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))

                          ),

                        ),
                      ),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    controller: password1,
                    validator: (pass){
                       pwd = pass;
                      if(pass!.isEmpty || pass.length < 6){
                        return "ATLEAST 6 CHARATER MUST BE THERE";
                      }
                    },
                    obscureText: shwpass1,
                    obscuringCharacter: "#",

                    decoration: InputDecoration(

                        hintText: "PASSWORD",
                        filled: true,
                        fillColor: Colors.amber[50],
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            if(shwpass1 == true){
                              shwpass1 =false;
                            }
                            else{
                              shwpass1 = true;
                            }
                          });
                        },
                            icon: shwpass1 == true ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility)
                        )
                    )

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    controller: password2,
                    validator: (passwrd){
                      if(passwrd!.isEmpty || passwrd != pwd){
                        return "PASSWORD NOT SAME";
                      }
                    },
                    obscureText: shwpass2,
                    obscuringCharacter: "#",

                    decoration: InputDecoration(

                        hintText: "CONFIRM PASSWORD",
                        filled: true,
                        fillColor: Colors.amber[50],
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            if(shwpass2 == true){
                              shwpass2 =false;
                            }
                            else{
                              shwpass2 = true;
                            }
                          });
                        },
                            icon: shwpass2 == true ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility)
                        )
                    )

                ),
              ),

              MaterialButton(onPressed: (){
                final validkey = valid.currentState!.validate();
                if(validkey == true) {
                  StoreData();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginshared()));
                }
              },
                color: Colors.deepOrange[50],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                child: const Text("REGISTER"),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Loginshared()));
              },
                child: RichText(text: const TextSpan(style: TextStyle(color: Colors.black,fontSize: 15),
                    children: [
                      TextSpan(text: "ALREADY AN USER "),
                      TextSpan(text: "SIGN IN!!",style: TextStyle(color: Colors.red))

                    ])),
              )


            ],
          ),
        ),
      ) ,
    );
  }

  void StoreData() async{
    String email = username1.text;
    String pass = password1.text;
    preferences = await SharedPreferences.getInstance();
    preferences.setString("uname", email);
    preferences.setString("upass", pass);

  }
}