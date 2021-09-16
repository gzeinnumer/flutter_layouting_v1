import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layouting_v1/get_set_text.dart';
import 'package:flutter_layouting_v1/v1.dart';
import 'package:flutter_layouting_v1/v2.dart';
import 'package:flutter_layouting_v1/v3.dart';
import 'package:flutter_layouting_v1/v4.dart';
import 'package:flutter_layouting_v1/v5.dart';
import 'package:flutter_layouting_v1/v6.dart';

void main() {
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
      home: GetSetText(),
    );
  }
}