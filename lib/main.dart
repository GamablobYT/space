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
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => mercScreen()));},
                    child: Image.asset('assets/mercury.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => venusScreen()));},
                    child: Image.asset('assets/ven.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => earthScreen()));},
                    child: Image.asset('assets/earth.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => marsScreen()));},
                    child: Image.asset('assets/mars.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => jupiterScreen()));},
                    child: Image.asset('assets/jupiter.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => saturnScreen()));},
                    child: Image.asset('assets/saturn.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => uranusScreen()));},
                    child: Image.asset('assets/uranus.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => neptuneScreen()));},
                    child: Image.asset('assets/neptune.png', fit: BoxFit.cover),
                  ),
                  GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => plutoScreen()));},
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
            Container(
              color: Colors.black,
              child: Image.asset('assets/sunInfo.png', width: 1200)
            ),
            Align(
              alignment: Alignment(-1.0, -0.87),
              child: BackButton(
                color: Colors.white,
                onPressed: () {Navigator.pop(context);},
              )
            ),
          ],
        ),
      )
    );
  }
}

class mercScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                  color: Colors.black,
                  child: Image.asset('assets/mercuryInfo.png', width: 1200)
              ),
              Align(
                  alignment: Alignment(-1.0, -0.87),
                  child: BackButton(
                    color: Colors.white,
                    onPressed: () {Navigator.pop(context);},
                  )
              ),
            ],
          ),
        )
    );
  }
}

class venusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                  color: Colors.black,
                  child: Image.asset('assets/venusInfo.png', width: 1200)
              ),
              Align(
                  alignment: Alignment(-1.0, -0.87),
                  child: BackButton(
                    color: Colors.white,
                    onPressed: () {Navigator.pop(context);},
                  )
              ),
            ],
          ),
        )
    );
  }
}

class earthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                  color: Colors.black,
                  child: Image.asset('assets/earthInfo.png', width: 1200)
              ),
              Align(
                  alignment: Alignment(-1.0, -0.87),
                  child: BackButton(
                    color: Colors.white,
                    onPressed: () {Navigator.pop(context);},
                  )
              ),
            ],
          ),
        )
    );
  }
}

class marsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                  color: Colors.black,
                  child: Image.asset('assets/marsInfo.png', width: 1200)
              ),
              Align(
                  alignment: Alignment(-1.0, -0.87),
                  child: BackButton(
                    color: Colors.white,
                    onPressed: () {Navigator.pop(context);},
                  )
              ),
            ],
          ),
        )
    );
  }
}

class jupiterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                  color: Colors.black,
                  child: Image.asset('assets/jupiterInfo.png', width: 1200)
              ),
              Align(
                  alignment: Alignment(-1.0, -0.87),
                  child: BackButton(
                    color: Colors.white,
                    onPressed: () {Navigator.pop(context);},
                  )
              ),
            ],
          ),
        )
    );
  }
}

class saturnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                  color: Colors.black,
                  child: Image.asset('assets/saturnInfo.png', width: 1200)
              ),
              Align(
                  alignment: Alignment(-1.0, -0.87),
                  child: BackButton(
                    color: Colors.white,
                    onPressed: () {Navigator.pop(context);},
                  )
              ),
            ],
          ),
        )
    );
  }
}

class uranusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                  color: Colors.black,
                  child: Image.asset('assets/uranusInfo.png', width: 1200)
              ),
              Align(
                  alignment: Alignment(-1.0, -0.87),
                  child: BackButton(
                    color: Colors.white,
                    onPressed: () {Navigator.pop(context);},
                  )
              ),
            ],
          ),
        )
    );
  }
}

class neptuneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                  color: Colors.black,
                  child: Image.asset('assets/neptuneInfo.png', width: 1200)
              ),
              Align(
                  alignment: Alignment(-1.0, -0.87),
                  child: BackButton(
                    color: Colors.white,
                    onPressed: () {Navigator.pop(context);},
                  )
              ),
            ],
          ),
        )
    );
  }
}

class plutoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                  color: Colors.black,
                  child: Image.asset('assets/plutoInfo.png', width: 1200)
              ),
              Align(
                  alignment: Alignment(-1.0, -0.87),
                  child: BackButton(
                    color: Colors.white,
                    onPressed: () {Navigator.pop(context);},
                  )
              ),
            ],
          ),
        )
    );
  }
}