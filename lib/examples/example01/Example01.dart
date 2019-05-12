import 'package:flutter/material.dart';
import '../../widgets/Badge.dart';

class Example01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// 标题栏
      appBar: new AppBar(
        title: new Text("Example01"),
      ),

      ///背景样式
      backgroundColor: Colors.blue,

      /// 主体内容
      body: new ListView(
        children: <Widget>[
          new Card(
            child: new FlatButton(
              onPressed: () {
                print("被点击了");
              },
              child: Padding(
                /// 添加padding
                padding: EdgeInsets.all(15),
                child: new Column(
//                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ///文本描述
                    new Container(
                      child: new Text(
                        "这是一点描述",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),

                        ///最长三行，超过 ... 显示
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),

                      /// 顶部居左
                      alignment: Alignment.topLeft,
                    ),
                    new Padding(padding: EdgeInsets.all(10.0)),

                    ///三个平均分配的横向图标文字
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Badge(Icons.star, "1000"),
                        new Badge(Icons.access_alarms, "1000"),
                        new Badge(Icons.account_balance, "1000")
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
