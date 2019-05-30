import 'package:flutter/material.dart';

class CreateLogBook extends StatefulWidget {
  @override
  _CreateLogBookState createState() => _CreateLogBookState();
}

class _CreateLogBookState extends State<CreateLogBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Logbook")),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        RaisedButton(child: Text("Cancel"),onPressed: (){},),
        RaisedButton(child: Text("Save"),onPressed: (){},)
      ],),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Category"),
            DropdownButton<String>(
              
              isExpanded: true,
              items: <String>['Operation', 'Notification'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (_) {},
              value: 'Operation',
            ),
            Container(margin: EdgeInsets.only(top: 20.0),child: Text("Plant")),
            DropdownButton<String>(
              isExpanded: true,
              items: <String>['Plant A', 'Plant B','Plant C'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (_) {},
              value: 'Plant A',
            ),
            Container(margin: EdgeInsets.only(top: 20.0),child: Text("Area")),
            TextField(),
            Container(margin: EdgeInsets.only(top: 20.0),child: Text("Description")),
            TextField(maxLines: 3,decoration: InputDecoration(icon: IconButton(icon: Icon(Icons.mic),onPressed: (){},)),),
            Container(margin: EdgeInsets.only(top: 20.0),child: Text("Attachment")),
            Row(children: <Widget>[
              RaisedButton(onPressed: (){},child: Icon(Icons.camera_alt),),
              RaisedButton(onPressed: (){},child: Icon(Icons.filter),)
            ],)
          ],
        ),
      ),
    );
  }
}
