import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

const requestUrl = "https://api.hgbrasil.com/finance?key=88669512";

void main() async {

  print(await getData());

  runApp(MaterialApp(
    home: Container()
  ));
}

Future<Map> getData() async {
  http.Response response = await http.get(Uri.parse(requestUrl));
  return json.decode(response.body);
}