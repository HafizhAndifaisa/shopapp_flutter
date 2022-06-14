import 'package:flutter/material.dart';
import 'package:shop_app/homepage.dart';
import 'package:shop_app/userpage.dart';

void main(List<String> args) {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {

  late int currentIndex;
  List widgetlist=[
    HomePage(),
    UserPage(),
  ];

  @override
  void initState() {
    currentIndex=0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetlist[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
        ],
        currentIndex: currentIndex,
        backgroundColor: Colors.black87,
        selectedItemColor: Colors.white70,
        unselectedItemColor: Colors.white30,
        onTap: (value){
          setState(() {
            currentIndex=value;
          });
        },
      ),
    );
  }
}