import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask anything'),
            backgroundColor: Colors.blue.shade800,
          ),
        body:MagicBall(),
        ),
      ),
    );


    class MagicBall extends StatefulWidget {
      @override
      _MagicBallState createState() => _MagicBallState();
    }
    
    class _MagicBallState extends State<MagicBall> {
      int randomBall = 1;
      @override
      Widget build(BuildContext context) {
        return Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
               onPressed: (){
                 setState(() {
                   randomBall = Random().nextInt(5) +1 ;
                 });
               },
                child: Image.asset('images/ball$randomBall.png')),
            ),
          ),
        );
      }
    }
