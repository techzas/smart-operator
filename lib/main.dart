import 'package:flutter/material.dart';
import 'package:smart_operator/pages/viewoperationlog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Operation Log',
      home: ViewOperationLog(),
    );
  }
}