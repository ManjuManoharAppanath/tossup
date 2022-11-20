import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
      Scaffold(body:
        Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextButton(onPressed: (){
              setState(() {
                i=Random().nextInt(6)+1;
              });
            },
              child: Container(
                height:200,
                width: 200,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/d$i.png'))),
              ),
            ),
            SizedBox(width: 50,),
            TextButton(onPressed: (){
              setState(() {
                i=Random().nextInt(6)+1;
              }
              );
            },
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/d$i.png'))),
              ),
            )
          ],),
        )
        ,),);
  }
}
