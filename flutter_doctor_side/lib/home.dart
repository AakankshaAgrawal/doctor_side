import 'package:flutter/material.dart';
import 'constants.dart';
import 'dart:convert';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  String data = jsonEncode(slots);
  List<Region> _region = [];
  String selectedRegion;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3D00E0),
        title: Text("Hello doc"),
      ),

      body: Center(
        child: Column(
          children: [

            DropdownButton<String>(
              value: selectedRegion,
              isDense: true,
              hint: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Select Slot",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              items: _region.map((Region map) {
                return new DropdownMenuItem<String>(
                  value: map.slotid.toString(),
                  child: new Text('${map.time}',
                      style: new TextStyle(color: Colors.black)),
                );
              }).toList(),
              onChanged: (String newValue) {
                setState(() {
                  selectedRegion = newValue;
                  // print(selectedRegion);
                  slotId = selectedRegion.toString();
                });
              },
            ),

        RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.red)
          ),
          onPressed: (){
            //call delete api

          },
          child: Text('NEXT', style: TextStyle(fontSize: 20)),
        )

          ],
        ),
      ),
    );
  }
}




class Region {
  final int slotid;
  final String time;

  Region({this.slotid, this.time});
  factory Region.fromJson(Map<String, dynamic> json) {
    return new Region(slotid: json['slotid'], time: json['time']);
  }
}