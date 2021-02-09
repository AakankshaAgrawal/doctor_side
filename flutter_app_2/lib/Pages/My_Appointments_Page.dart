import 'package:flutter/material.dart';
import 'package:expansion_card/expansion_card.dart';

class MyAppointmentsPage extends StatefulWidget {
  @override
  _MyAppointmentsPageState createState() => _MyAppointmentsPageState();
}

class _MyAppointmentsPageState extends State<MyAppointmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ExpansionCard(
              borderRadius: 20,
              trailing: Icon(Icons.arrow_drop_down, color: Colors.blue,),
              title:
            Card(
                color: Colors.blue,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                    ListTile(
                      title: Text('Doctor abc'),
                      subtitle: Text('\nPediatrician\ncheck-in-time : 5:00'),),

            /*            Divider(),

                        ListTile(
                          title: Text('Registration Queue'),
                            subtitle: Text('check-in-time : 5:00'),
                          trailing: Text('20 mins'),
                        ),
                        ListTile(
                          title: Text('Registration Queue'),
                          subtitle: Text('check-in-time : 5:00'),
                          trailing: Text('20 mins'),
                        )
                    ]
                          )
              ),*/],),),
              children: <Widget>[
    Card(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

                        ListTile(
                          title: Text('Registration Queue'),
                            subtitle: Text('check-in-time : 5:00'),
                          trailing: Text('20 mins'),
                        ),

                        Divider(),

                        ListTile(
                          title: Text('Registration Queue'),
                          subtitle: Text('check-in-time : 5:00'),
                          trailing: Text('20 mins'),
                        )
                    ]
                          )
    )],),
            )
    );
  }
}
