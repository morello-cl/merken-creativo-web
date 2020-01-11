import 'dart:math';

import 'package:flutter/material.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';

class DefaultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(),
          Column(
            children: <Widget>[
              _bodyPage(),
              _countdownClock(),
              _footerPage(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _background() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(219, 24, 18, 1.0),
            Colors.black
          ]
        )
      ),
    );
  }

  Widget _bodyPage() {
    final pichangaProBack = Positioned(
      top: -70.0,
      left: 100.0,
      child: Transform.rotate(
        angle: -pi / 7.0,
        child: Container(
          height: 360,
          width: 640,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(80.0),
            child: Image.asset('images/mc_back.jpg'),
          ),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        pichangaProBack,
        Container(
          child: Center(
            child: Image.asset('images/mc_logo.png'),
          ),
        )
      ],
    );
  }

  Widget _footerPage() {
    return Text('© Merkén Creativo 2018 - 2020', 
      style: TextStyle(
        color: Color.fromRGBO(0xAF, 0xAF, 0xAF, 1.0),
      ),
    );
  }

  Widget _countdownClock() {
    final dateTimeEnd = new DateTime(2020, DateTime.december, 1);
    final startApp = dateTimeEnd.difference(DateTime.now());
    return Padding(
      padding: EdgeInsets.all(10),
      child: SlideCountdownClock(
        duration: Duration(days: startApp.inDays),
        slideDirection: SlideDirection.Up,
        separator: "-",
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(0xAF, 0xAF, 0xAF, 1.0),
        ),
        separatorTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(0xC7, 0x52, 0x2C, 1.0),
        ),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(0xC7, 0x52, 0x2C, 1.0),
          shape: BoxShape.circle
        ),
        onDone: null,
      ),
    );
  }
}
