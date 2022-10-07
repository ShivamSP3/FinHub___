import 'package:flutter/material.dart';
import 'package:todo_app/Sections/chart&analysis.dart';
import 'package:todo_app/Sections/news.dart';
import 'package:todo_app/Sections/portfolio.dart';
import 'package:todo_app/Sections/watchlist.dart';

import '../Sections/profile.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
const TextStyle _textStyle = TextStyle(
  fontSize: 40,fontWeight: FontWeight.bold, letterSpacing: 3,fontStyle: FontStyle.italic
);

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> pages = const[

      WatchList(),
      ChartPage(),
      PortFolio(),
      News(),
      Profile(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  appBar: AppBar(
        //   centerTitle: true,toolbarHeight:60,backgroundColor: Colors.white,
        //   title : const Text('FinHub',style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold,),),
        //  ),
       body: Center(child: pages[_currentIndex]),
      
       bottomNavigationBar: NavigationBar(
        height: 60,
        animationDuration: Duration(seconds: 1),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: _currentIndex,
        onDestinationSelected: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        // ignore: prefer_const_literals_to_create_immutables
        destinations: [
          const NavigationDestination(
            selectedIcon: Icon(Icons.library_add),
            icon: Icon(Icons.library_add), label: 'WatchList'
          ),
          const NavigationDestination(
            selectedIcon: Icon(Icons.candlestick_chart),
            icon: Icon(Icons.candlestick_chart), label: 'Chart'
          ),
          const NavigationDestination(
            selectedIcon: Icon(Icons.next_week),
            icon: Icon(Icons.next_week), label: 'Portfolio'
          ),
          const NavigationDestination(
            selectedIcon: Icon(Icons.newspaper_outlined),
            icon: Icon(Icons.newspaper_outlined), label: 'News'
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person), label: 'Profile'
          )
        ],
       ),
    );
  }
}
