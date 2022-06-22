import 'dart:async';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

void sun(){
  //print("sun");
  //Navigator.push(context, MaterialPageRoute(builder: (context) => sunScreen()))
}

void merc(){
  print("merc");
}

void venus() {
  print("venus");
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
              color: Colors.black,
              child: Image.asset('assets/bg.jpg', width: 1200),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Image.asset('assets/top.png')
                  ),
                  GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => sunScreen()));}, //shift to sunScreen
                    child: Image.asset('assets/sun.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: merc,
                    child: Image.asset('assets/mercury.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: venus,
                    child: Image.asset('assets/ven.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: sun,
                    child: Image.asset('assets/earth.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: merc,
                    child: Image.asset('assets/mars.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: venus,
                    child: Image.asset('assets/jupiter.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: sun,
                    child: Image.asset('assets/saturn.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: merc,
                    child: Image.asset('assets/uranus.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: venus,
                    child: Image.asset('assets/neptune.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: sun,
                    child: Image.asset('assets/pluto.png', fit: BoxFit.cover),
                  )
              ]
              )
            ),

          ]
        )
      )
    );
  }
}

class sunScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(-1.0, -0.9),
              child: BackButton(
                color: Colors.black,
                onPressed: () {Navigator.pop(context);},
              )
            )
          ],
        ),
      )
    );
  }
}