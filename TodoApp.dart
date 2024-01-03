import 'package:flutter/material.dart';
import 'package:january/models/Todo.dart';
import 'package:january/screens/Details.dart';

class TodoApp extends StatelessWidget {
  TodoApp({super.key});
  int i = 2;
  final todos = List.generate(
      20,
      (i) => Todo(
          title: "Title $i",
          des:
              "des Sign In. 11,083 inspirational designs, illustrations, and graphic elements from the world's best designers. Want more inspiration? Browse our search results"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        title: Text("Todo App"),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple[300],
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(todo: todos[index]),
                  ),
                );
              });
        },
      ),
    );
  }
}
