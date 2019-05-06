import 'package:flutter/material.dart';

// 第一个页面
class FirstView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("FirstView"),
      ),
      body: new Center(
        child: new RaisedButton(
            child: new Text("商品详情"),
            onPressed: () => {
                  // Navigate to second view when tapped!
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new SecondView()),
                  )
                }),
      ),
    );
  }
}

class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second View"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            // Navigate back to first view when tapped!
            Navigator.pop(context);
          },
          child: new Text('Go back!'),
        ),
      ),
    );
  }
}
