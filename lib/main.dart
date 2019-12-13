import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ask My Anything ! ',
            style: TextStyle(
              color: Colors.amber,
            ),
          ),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int BallPageNumber = 1;

  void ChangeBallPage(){
    setState(() {
      BallPageNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
               ChangeBallPage();
               print('clicked  $BallPageNumber');
               
              },
              child: Image.asset('images/ball$BallPageNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
