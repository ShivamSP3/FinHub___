import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Charting extends StatefulWidget {
  const Charting({super.key});

  @override
  State<Charting> createState() => _ChartingState();
}

class _ChartingState extends State<Charting> {
  late WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      child:WebView(
        initialUrl: 'https://www.tradingview.com/chart/',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller = webViewController;
            },
      )
     
      ),
    );
  }
}