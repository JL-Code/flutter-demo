import 'package:flutter/material.dart';
import '../examples/stateful/TestState.dart';
import '../examples/example01/Example01.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("example"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: new Text("有状态Widget"),            
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new Test("有状态Widget")));
            },
          ),
          new ListTile(
            title: new Text("Example01"),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Example01()));
            },
          )
        ],
      ),
    );
  }
}
