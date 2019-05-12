import 'package:flutter/material.dart';

/// 徽章widget
/// IconData icon 图标
/// String text 说明
class Badge extends StatelessWidget {
  final IconData icon;
  final String text;

  Badge(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    /// 充满 Row 横向的布局
    return Expanded(
      flex: 1,
      /// 居中显示
      child: Center(
        ///横向布局
        child: new Row(
          ///主轴居中,即是横向居中
          mainAxisAlignment: MainAxisAlignment.center,

          ///大小按照最大充满
          mainAxisSize: MainAxisSize.max,

          ///竖向也居中
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            /// 图标
            new Icon(
              icon,
              color: Colors.grey,
              size: 16,
            ),
            /// 图标和文字的间隔
            new Padding(padding: EdgeInsets.only(left: 5.0)),
            /// 文字
            new Text(
              text,
              /// 设置字体样式
              style: new TextStyle(color: Colors.grey, fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}
