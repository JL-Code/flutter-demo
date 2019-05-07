import 'package:flutter/material.dart';
import '../../models/Todo.dart';

class TodoDetail extends StatelessWidget {
  //  Declare a field that holds the Todo
  final Todo todo;

  // In the constructor, require a Todo
  TodoDetail({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(todo.title)),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(16.0),
              child: new Text(todo.description),
            ),
            new Padding(
              padding: new EdgeInsets.all(16.0),
              child: new RaisedButton(
                child: new Text("未完成"),
                onPressed: () {
                  Navigator.pop(context, false);
                },
              ),
            ),
            new Padding(
              padding: new EdgeInsets.all(16.0),
              child: new RaisedButton(
                child: new Text("已完成"),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
