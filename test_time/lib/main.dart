import 'package:flutter/material.dart';
import 'dart:async';

import 'package:test_time/time_testing.dart';
int Time;
void main() {
  String time='23:00:00';
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Waiting(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                child:Text(Time.toString()),
                onPressed: (){
                  setState((){
                    Time;
            });
              },
            )],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
            TimerOfAll timerOfAll = await TimerOfAll('21:15:00');
            setState(() {
              print(Time);
            });
          },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class TimerOfAll {
  String time;
  Timer _timer;
  static DateTime now = new DateTime.now();

  TimerOfAll(String time) {
    this.time = time;
    List listWait = time.split(':');
    DateTime date = new DateTime(now.year, now.month, now.day,
        int.parse(listWait[0]), int.parse(listWait[1]), int.parse(listWait[2]));
    _startTimer(date);
  }

  void _startTimer(DateTime date) {
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(
      Duration(seconds: 1),
          (timer) {
        Duration difference = date.difference(DateTime.now());
        if (difference.inSeconds > 0) {
          Time = difference.inSeconds;
          // _counter--;
        } else {
          _timer.cancel();
        }
      },
    );
  }
/*  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child:Text(Time.toString()),
              onPressed: (){
                setState((){
                  Time;
                });
              },
            )],
        ),
      ),*/
/*floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          TimerOfAll timerOfAll = await TimerOfAll('21:15:00');
          setState(() {
            print(Time);
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
/*
    );
  }*/
}
