import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _value = null;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF3D00E0),
      body: SingleChildScrollView(
      child:Column(
        children: [
          Container(
            color: Color(0xFF3D00E0),
            height:135,
            width: 380,
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dr. Neela Iyer', style: TextStyle(color: Colors.white, fontSize: 25)),
                    Text('Pediatrician', style: TextStyle(color: Colors.white, fontSize: 15)),
                  ]
              ),
            ),
          ),


          Container(

            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Center(
                    heightFactor: 0.01,
                    child: Container(
                      child: ListTile(
                        dense: true ,
                        leading: Text('DATE', style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF3D00E0))),
                      ),
                    )
                ),

                Center(

                    child: Container(
                      child: ListTile(
                        dense: true ,
                        leading: Text('TIME',
                            style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF3D00E0))),
                        trailing: DropdownButton(
                            value: _value,
                            hint: Align(alignment: Alignment.centerRight,
                              child: Text("Select Slot", style: TextStyle(color: Colors.grey),),),
                            items: [
                              DropdownMenuItem(
                                child: Text("First Item"),
                                value: 1,),
                              DropdownMenuItem(
                                child: Text("Second Item"),
                                value: 2,),
                              DropdownMenuItem(
                                  child: Text("Third Item"),
                                  value: 3),
                            ],
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            }
                        ),
                      ),
                    )
                ),


                Center(
                    child: Card(
                        shadowColor: Color(0xFF3D00E0),
                        child: Column(
                          children: [
                            ListTile(
                              dense: true ,
                              leading: Text('NAME', style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF3D00E0)),),
                              trailing: Text('Rohan Gupta',style: TextStyle(fontSize: 15),),
                            ),

                            Divider(color: Color(0xFF3D00E0),),

                            ListTile(
                              dense: true ,
                              leading: Text('AGE',
                                  style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF3D00E0))),
                              trailing: Text('15',style: TextStyle(fontSize: 15),),
                            ),

                            Divider(color: Color(0xFF3D00E0)),

                            ListTile(
                              dense: true ,
                              leading: Text('GENDER',
                                  style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF3D00E0))),
                              trailing: Text('MALE',style: TextStyle(fontSize: 15),),
                            ),

                            Divider(color: Color(0xFF3D00E0)),

                            ListTile(
                              dense: true ,
                              leading: Text('DISABILITY',
                                  style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF3D00E0))),
                              trailing: Text('No',style: TextStyle(fontSize: 15),),
                            ),

                            Divider(color: Color(0xFF3D00E0),),

                            ListTile(
                              dense: true ,
                              leading: Text('PHONE NO.',
                                  style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF3D00E0))),
                              trailing: Text('987654321',style: TextStyle(fontSize: 15),),
                            ),

                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Enter your username'
                              ),
                            )

                          ],
                        )
                    ),
                  ),


                Center(
                  child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ButtonTheme(
                              minWidth: 100.0,
                              height: 50.0,
                              child: RaisedButton(
                                color: Color(0xFF3D00E0),
                                child: Text('EDIT DETAILS', style: TextStyle(color: Colors.white),),
                                onPressed: () {
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(
                                      color: Color(0xFF3D00E0),
                                      width: 5.0,
                                    )),
                              ),
                            ),

                            ButtonTheme(
                              minWidth: 100.0,
                              height: 50.0,
                              child: RaisedButton(
                                color: Colors.red,
                                child: Text('BOOK APPOINTMENT', style: TextStyle(color: Colors.white),),
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(
                                      color: Colors.red,
                                      width: 5.0,
                                    )),
                              ),
                            ),
                          ]
                      )
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)),
            ),
            height: MediaQuery.of(context).size.height * 0.8,
          ),

        ],
      ),
      )
    );
  }
}
