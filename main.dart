import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blueGrey,
            child: Stack(
              children: [
                C(data: 'A', color: Colors.green,t: 10,l: 10,),
                C(data: 'B', color: Colors.yellow,t: 10,r: 10,),
                C(data: 'C', color: Colors.pink,b: 10,l: 10,),
                C(data: 'D', color: Colors.blue,b: 10,r: 10,),
                Center(child: C(data: 'E', color: Colors.red)
                )
              ]
            )
          )
        )
      )
    );
  }
}

class C extends StatelessWidget {
  C({super.key,required this.data,this.r,this.b,this.l,this.t,required this.color});
  String data;
  double? r;
  double? b;
  double? l;
  double? t;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Positioned(
                right: r,
                bottom: b,
                left: l,
                top: t,
                child: Container(
                  width: 100,
                  height: 100,
                  color: color,
                  alignment: Alignment.center,
                  child: Text(
                      data,
                      style:  const TextStyle(fontSize: 22)
                  )
                )
            )
          ]
    );
  }
}
