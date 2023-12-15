import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home: Profileui(),debugShowCheckedModeBanner: false,));
}

class Profileui extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ProfileuiState();
  
  
}

class _ProfileuiState extends State<Profileui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.menu)],
        elevation: 0,
      ),
      body:  Column(
        children: [
          Container(
            color: Colors.white,
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(backgroundImage: AssetImage("assets/image/profile.jpeg"),
                  radius: 100,
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: Wrap(
                      spacing: 30,
                     //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                         FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,size: 40,),
                          FaIcon(FontAwesomeIcons.squareTwitter,color: Colors.blueAccent,size: 40,),
                         FaIcon(FontAwesomeIcons.linkedin,color: Colors.teal[300],size: 40,),
                       FaIcon(FontAwesomeIcons.github,size: 40,)
                      ],
                    ),
                  ),
                  SizedBox(height:40),
                  Text("Jerin",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),
                  ),
                  Text("@webror",style: TextStyle(fontSize: 20,color: Colors.grey),),
                    Text("Mobile App Developer",style: TextStyle(fontSize: 20,color: Colors.grey[600]),

                  ),
    ],
    ),
          ),
                   Expanded(
                     child:  Container(
                       //color: Colors.white,
                         child: ListView(
                             children: [
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: ListTile(
                                title: Text("Privacy",style: TextStyle(fontWeight: FontWeight.bold)),
                                leading: Icon(Icons.privacy_tip_outlined,color: Colors.black,),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),),
                                tileColor: Colors.grey[350],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0,right: 25,bottom: 25),
                              child: ListTile(
                                title: Text("Purchase History",style: TextStyle(fontWeight: FontWeight.bold)),
                                leading: Icon(Icons.history,color: Colors.black,),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),),
                                tileColor: Colors.grey[350],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0,right: 25,bottom: 25),
                              child: ListTile(
                                title: Text("Help & Support",style: TextStyle(fontWeight: FontWeight.bold)),
                                leading: Icon(Icons.help_outline,color: Colors.black,),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  ),
                                tileColor: Colors.grey[350],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0,right: 25,bottom: 25),
                              child: ListTile(
                                title: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold)),
                                leading: Icon(Icons.settings,color: Colors.black,),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),),
                                tileColor: Colors.grey[350],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0,right: 25,bottom: 25),
                              child: ListTile(
                                title: Text("Invite a friend",style: TextStyle(fontWeight: FontWeight.bold)),
                                leading: Icon(Icons.person_add_alt_1_sharp,color: Colors.black,),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),),
                                tileColor: Colors.grey[350],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0,right: 25,bottom: 25),
                              child: ListTile(
                                title: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold),),
                                leading: Icon(Icons.logout,color: Colors.black,),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),),
                                tileColor: Colors.grey[350],
                              ),
                            ),
                             ]
                       
                             ),
                       ),
                     ),


                    ],
                   ),



    );
  }
}