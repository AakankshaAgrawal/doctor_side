import 'package:flutter/material.dart';
import 'doctor_login.dart';
import 'constants.dart';

void main() {
  runApp(
      MaterialApp(
        home: MyApp()


      ) );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final userName = new TextEditingController();
  final password = new TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: [
        Container(
        color: Colors.indigo,
    ),
    Positioned.fill(
    child: Align(
    alignment: Alignment.bottomCenter,
    child: Container(
    padding: EdgeInsets.all(25.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Center(
    child: Text(
    "LOGIN",
    style: TextStyle(fontSize: 20.0),
    ),
    ),

      Center(
        child: Container(
          width: 380,
          child: TextFormField(
            controller: userName,
            decoration: InputDecoration(
                hintText: "Enter Username",
                icon: Icon(Icons.accessibility_new_outlined)),
          ),
        ),
      ),

      Center(
        child: Container(
          width: 380,
          child: TextFormField(
            controller: password,
            decoration: InputDecoration(
                hintText: "Enter Password",
                icon: Icon(Icons.accessibility_new_outlined)),
            keyboardType: TextInputType.visiblePassword,
          ),
        ),
      ),

    Center(
    child: Container(
    child: ButtonTheme(
    minWidth: 100.0,
    height: 50.0,
    child: RaisedButton(
    color: Color(0xFF3D00E0),
    child: Text(
    'Submit',
    style: TextStyle(color: Colors.white),
    ),
    onPressed: ()async{

      setState(() {
        Username = userName.text;
        Password = password.text;
      });


      //call login API
      //docid docname
      // if valid call slots api
      slots = newSlotMap[docName];
    }
    )
    )
    )
    )



    ])
    )
    )
    )

    ])
    );
  }



}



