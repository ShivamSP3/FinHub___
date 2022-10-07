import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class Charting extends StatefulWidget {
  const Charting({super.key});

  @override
  State<Charting> createState() => _ChartingState();
}

class _ChartingState extends State<Charting> {
  var loadingPercentage = 0;
  late WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
         toolbarHeight:50,backgroundColor: Colors.white,
          title : Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[  
              Text("Fin",style: TextStyle(color: Colors.black,fontSize: 30),textAlign: TextAlign.center,),
              Text("Hub",style: TextStyle(color: Colors.blue,fontSize: 30),textAlign: TextAlign.center,)
            ],
          ),
          elevation: 0.0,
         ),
     body: Center(
        child: (WebView(
          initialUrl: 'https://www.tradingview.com/chart/RHahYkGW/',
          userAgent: 'random',
            javascriptMode: JavascriptMode.unrestricted,
    onWebViewCreated: (WebViewController webViewController) {
        _controller = webViewController;
    },
        )
        
        ),
       
      
    )
    );
  }
}