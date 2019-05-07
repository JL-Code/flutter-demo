import 'package:flutter/material.dart';
import './View.dart';

/// APP首页
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 按钮构造器方法
    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Icon(icon, color: color),
            new Container(
                margin: const EdgeInsets.only(top: 8.0),
                child: new Text(label,
                    style: new TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: color)))
          ]);
    }

    // 文本标题
    Widget titleSection = new Container(
        padding: const EdgeInsets.all(32),
        child: new Row(children: <Widget>[
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  'Oeschinen Lake Campground',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new Text(
                'Kandersteg, Switzerland',
                style: new TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          )),
          new Icon(Icons.star, color: Colors.red[500]),
          new Text('41')
        ]));
    // 按钮组
    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );
    // 大段文本
    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    // 浮动按钮

    return new Scaffold(
        appBar: AppBar(title: Text("列表示例")),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/lake.jpeg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            new FlatButton(
                child: new Text("跳转页面"),
                onPressed: () {
                  // navigation to new view
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new FirstView()));
                })
          ],
        ));
  }
}
