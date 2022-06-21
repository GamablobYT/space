import 'dart:async';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Splash Screen',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  //bool _splashOver = false;
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Image.asset('assets/splash.png')
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Milky Way", textScaleFactor: 3,
      )
      )
    );
  }
}