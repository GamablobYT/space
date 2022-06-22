import 'dart:async';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

void sun(){
  print("sun");
}

void merc(){
  print("merc");
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
        child: Stack(
          children: [
            Container(
              child: Image.asset('assets/bg.jpg')
            ),
            Column(
                children: [
                  GestureDetector(
                    onTap: sun,
                    child: Image.asset('assets/sun.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: merc,
                    child: Image.asset('assets/mercury.png', fit: BoxFit.cover),
                  )
              ]
              ),

          ]
        )
      )
    );
  }
}