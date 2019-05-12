import 'package:flutter/material.dart';
import './views/Index.dart';

void main() => runApp(App());

/// APP 入口
class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(home: new HomeView());
    return MaterialApp(home: new Index());
  }
}
