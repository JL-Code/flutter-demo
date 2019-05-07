import 'package:flutter/material.dart';
import '../../models/Todo.dart';
import './TodoDetail.dart';

class TodoView extends StatelessWidget {
  final todos = new List<Todo>.generate(
      20,
      (i) => new Todo(
          "Todo $i", "A description of what needs to be done for Todo $i"));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Todos"),
      ),
      // body: ListView(children: <Widget>[
      //   new Container(
      //     margin: EdgeInsets.all(10),
      //     padding: EdgeInsets.all(15),
      //     color: Color(0xFF03A9F4),
      //     child: new Text(
      //       "阿里云音视频点播服务",
      //       style: new TextStyle(color: Color(0xFFFFFFFF)),
      //     ),
      //   )
      // ]),
      body: new ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            // return new Container(
            //   margin: EdgeInsets.only(bottom: 5),
            //   padding: EdgeInsets.all(15),
            //   color: Color(0xFF03A9F4),
            //   child: new Text(
            //     todos[index].title,
            //     style: new TextStyle(color: Color(0xFFFFFFFF)),
            //   ),
            // );
            return new ListTile(
              title: new Text(todos[index].title),
              onTap: () async {
                // 导航到新页面并给新页面传值 并等待页面返回值
                bool result = await Navigator.push(
                    context,
                    new MaterialPageRoute<bool>(
                        builder: (context) =>
                            new TodoDetail(todo: todos[index])));

                print("result");
                print(result);
                Scaffold.of(context).removeCurrentSnackBar();
                if (result == true) {
                  Scaffold.of(context).showSnackBar(new SnackBar(
                    content: new Text("已完成"),
                  ));
                } else if (result == false) {
                  Scaffold.of(context).showSnackBar(new SnackBar(
                    content: new Text("未完成"),
                  ));
                }
              },
            );
          }),
    );
  }
}
