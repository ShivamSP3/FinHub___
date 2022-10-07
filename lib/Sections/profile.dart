import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         toolbarHeight:60,backgroundColor: Colors.white,
          title : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[  
              Text("User",style: TextStyle(color: Colors.black,fontSize: 30),textAlign: TextAlign.center,),
              Text("Profile",style: TextStyle(color: Colors.blue,fontSize: 30),textAlign: TextAlign.center,)
            ],
          ),
          elevation: 0.0,
         ),
         body: Center(
           child: Text("Profile Section",style: TextStyle(fontSize: 40),),
              
           ),
      
    );
  }
}