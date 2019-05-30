import 'package:flutter/material.dart';

class HomeLogBook extends StatelessWidget {
  List<String> LogBookList = ["Log book 1", "Log book 2", "Log book 3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Log Book'),),
      body: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Icon(Icons.playlist_add),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: Icon(Icons.list),
                    onPressed: () {},
                  ),
                   RaisedButton(
                    child: Icon(Icons.refresh),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                var logbook = LogBookList[index];
                var resultWidget = Text(logbook);

                //return resultWidget;
                return ListTile(
                  // leading: Image.network(contact.picture.large),

                  contentPadding: EdgeInsets.all(10.0),
                  title: resultWidget,

                  trailing: Column(
                    children: <Widget>[
                      Text(
                        '2 days ago',
                        style: TextStyle(fontSize: 14.0, color: Colors.green),
                      ),
                    ],
                  ),
                  onTap: () {
                    //print('คุณกดหมายเลข ' + contact.name.first.toString());
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
