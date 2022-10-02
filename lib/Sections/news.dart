import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  late WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      child:WebView(
        initialUrl: 'https://in.investing.com/',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller = webViewController;
            },
      )
     
      ),
    );
  }
}