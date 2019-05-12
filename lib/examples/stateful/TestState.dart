import 'package:flutter/material.dart';

/// 有状态Widget
class Test extends StatefulWidget {
  final String text;

  Test(this.text);

  @override
  _TestState createState() => _TestState(text);
}

/// _ 前缀表示私有。
class _TestState extends State<Test> {
  String text;

  _TestState(this.text);

  /// 初始状态
  @override
  void initState() {
    ///初始化，这个函数在生命周期中只调用一次
    super.initState();

    /// 2s 后改变状态
    new Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        text = "这就变了数值";
      });
    });
  }

  @override
  void didChangeDependencies() {
    ///在initState之后调 Called when a dependency of this [State] object changes.
    super.didChangeDependencies();
  }

  /// 销毁Widget时调用
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(text ?? "这就是有状态的Widget"),
      ),
    );
  }
}
