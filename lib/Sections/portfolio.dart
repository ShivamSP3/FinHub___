import 'package:flutter/material.dart';

class PortFolio extends StatefulWidget {
  const PortFolio({super.key});

  @override
  State<PortFolio> createState() => _PortFolioState();
}

class _PortFolioState extends State<PortFolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         toolbarHeight:60,backgroundColor: Colors.white,
          title : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[  
              Text("Port",style: TextStyle(color: Colors.black,fontSize: 30),textAlign: TextAlign.center,),
              Text("folio",style: TextStyle(color: Colors.blue,fontSize: 30),textAlign: TextAlign.center,)
            ],
          ),
          elevation: 0.0,
         ),
          body: Center(
           child: Text("Portfolio",style: TextStyle(fontSize: 40),),
              
           ),
    );
  }
}