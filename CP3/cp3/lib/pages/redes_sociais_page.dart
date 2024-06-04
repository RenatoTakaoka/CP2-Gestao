import 'package:cp3/pages/redes_sociais_desc_page.dart';
import 'package:cp3/redes_sociais.dart';
import 'package:flutter/material.dart';

class RedesSociaisPage extends StatefulWidget {
  const RedesSociaisPage({super.key});

  @override
  State<RedesSociaisPage> createState() => _RedesSociaisPageState();
}

class _RedesSociaisPageState extends State<RedesSociaisPage> {
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