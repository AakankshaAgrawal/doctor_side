import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'main.dart';

import 'constants.dart';

class APIservice {

  Future<String> getSlotsList() async {
    var response = await http.get(
      ngrok + 'api/doctor/slots',
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      var mapResponse = json.decode(response.body);
      newSlotMap = mapResponse["data"];
    }
  }




  Future<String> Login() async {

    Map jsonMap = {
      "username": Username,
      "password": Password,
    };

    var response = await http.post(
      ngrok + 'api/doctor/slots',
      body: json.encode(jsonMap),
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      var mapResponse = json.decode(response.body);
      docId = mapResponse["docid"];
      docName= mapResponse["docname"];
    }
  }





}