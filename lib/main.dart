import 'package:flutter/material.dart';
import 'package:smart_operator/pages/viewoperationlog.dart';
import 'package:smart_operator/pages/notification_page.dart';
import 'myhome_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
