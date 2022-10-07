import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:webview_flutter_plus/webview_flutter_plus.dart';


class WatchList extends StatefulWidget {
  const WatchList({super.key});

  @override
  State<WatchList> createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         toolbarHeight:60,backgroundColor: Colors.white,
          title : Row(
        mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[  
              Text("Watch",style: TextStyle(color: Colors.black,fontSize: 30),textAlign: TextAlign.center,),
              Text("List",style: TextStyle(color: Colors.blue,fontSize: 30),textAlign: TextAlign.center,)
            ],
          ),
          elevation: 0.0,
         ),
      body: Center(
        child: Text("WatchList"),
      )
    );
  }
}