import 'package:flutter/material.dart';
import 'dart:async';
import 'main.dart';
class Waiting extends StatefulWidget {
  String t;
  @override
  _WaitingState createState() => _WaitingState(t);
}

class _WaitingState extends State<Waiting> {
  int Time_display;
  String timee;
  Timer _timer;
  static DateTime now = new DateTime.now();

  _WaitingState(String time){
    this.timee = time;
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
          Time_display = difference.inSeconds;
          // _counter--;
        } else {
          _timer.cancel();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(Time_display.toString())
            /*FlatButton(
              child:Text(Time_display.toString()),
              onPressed: (){
                setState((){
                  Time;
                });
              },
            )*/],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          TimerOfAll timerOfAll = await TimerOfAll('21:15:00');
          setState(() {
            print(Time);
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), */
    );
  }

}
