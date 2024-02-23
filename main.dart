import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FacebookApp(),
    );
  }
}

class FacebookApp extends StatelessWidget {
  const FacebookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("facebook",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 27,
                fontWeight: FontWeight.w700)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.blueAccent,
            size: 30,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.message,
                color: Colors.blueAccent,
                size: 30,
              ),
              onPressed: () {}),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.blueAccent,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 20,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.blueGrey,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Colors.green[200],
                  child: Text('C4a.shop',style: TextStyle(fontSize: 22),),
                ),
                right: 10,
                top: 10,

              ),
              Positioned(
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Colors.amber[200],
                  child: Text('C4a.shop',style: TextStyle(fontSize: 22),),
                ),
                top: 10,
                left: 10,
              ),
              Positioned(
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Colors.pink[200],
                  child: Text('C4a.shop',style: TextStyle(fontSize: 22),),
                ),
                bottom: 10,
                left: 10,
              ),
              Positioned(
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Colors.blue[200],
                  child: Text('C4a.shop',style: TextStyle(fontSize: 22),),
                ),
                bottom: 10,
                right: 10,
              ),
              Positioned(
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    color: Colors.red[200],
                    child: Text('C4a.shop',style: TextStyle(fontSize: 22),),
                  ),
                ),
              )],
          ),
        ),
      ),
    );
  }
}
