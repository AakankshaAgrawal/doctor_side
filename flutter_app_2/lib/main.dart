import 'package:flutter/material.dart';
import 'package:flutter_app_2/Pages/Make_Appointments_Page.dart';
import 'package:flutter_app_2/Pages/My_Appointments_Page.dart';
import 'package:flutter_app_2/Pages/Posts_Page.dart';
import 'package:flutter_app_2/Pages/Profile_Page.dart';
import 'package:flutter_app_2/Pages/Settings_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomNavigationBar(),
    );;
  }
}


// ignore: must_be_immutable
class MyBottomNavigationBar extends StatefulWidget {
  @override

  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex=0;
  final List<Widget> _children=[
    MyAppointmentsPage(),
    MakeAppointmentPage(),
    PostsPage(),
    SettingsPage(),
  ];

  void onTappedBar(int index)
  {
    setState((){
      _currentIndex=index;
    });
  }

  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aasaan'),
        backgroundColor: Color(0xFF3D00E0),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            tooltip: 'Profile',
            onPressed: () {navigateToSubPage(context);} ,
          )
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar:Theme(
      data: Theme.of(context).copyWith(
      // sets the background color of the `BottomNavigationBar`
      canvasColor: Color(0xFF3D00E0),
      // sets the active color of the `BottomNavigationBar` if `Brightness` is light
      primaryColor: Colors.white,
      textTheme: Theme
          .of(context)
          .textTheme
          .copyWith(caption: new TextStyle(color: Colors.blue[200]))), // sets the inactive color of the `BottomNavigationBar`
      child: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
                title: Text('My Appointments'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text('Make Appointment'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.mode_comment),
            title: Text('Posts'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),

        ]
      ),
      )
    );
  }
}
