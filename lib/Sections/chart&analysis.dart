import 'package:flutter/material.dart';
import 'package:todo_app/Tabs/Charting.dart';
import 'package:todo_app/Tabs/analysis.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 2,
    child: Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(children: [
        TabBar(tabs: [
          Tab(
            icon:Icon (Icons.candlestick_chart,color: Colors.deepPurple)
          ),
          Tab(
            icon:Icon (Icons.analytics,color: Colors.deepPurple)
          )
        ]),
        Expanded(
          // ignore: prefer_const_constructors
          child: TabBarView(children: [
            Charting(),
            Analysis()
          ],
          ),
        )
      ]),
    ),
    );
  }
}