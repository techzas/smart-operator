import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Page'),
      ),
      body: Column(
        children: <Widget>[
          Text('Category'),
          TextFormField(),
          Text('Notification No.'),
          TextFormField(),
          Text('Description'),
          TextFormField(),
          Text('Functional Location'),
          TextFormField(),
          Text('Equipment'),
          TextFormField(),
        ],
      ),
    );
  }
}
