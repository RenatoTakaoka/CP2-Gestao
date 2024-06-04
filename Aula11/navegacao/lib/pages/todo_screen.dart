import 'package:flutter/material.dart';
import 'package:navegacao/pages/todo_detail.dart';
import 'package:navegacao/todo.dart';
import 'package:navegacao/todos.dart';

class TodoScreen extends StatelessWidget {
  TodoScreen({super.key});

  final List<Todo> todos = Todos().todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos '),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index])
                ),
              );
            },
          );
        },
      ),
    );
  }
}