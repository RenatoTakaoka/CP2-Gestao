import 'package:flutter/material.dart';
import 'package:navegacao/pages/second_page.dart';
import 'package:navegacao/contato.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First page'),),
      body: Center(
        child: ElevatedButton(
          child: const Text('Navegar'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage(contato: Contato('Banana', 'banana@banana.com'),))
            );
          },
        ),
      ),
    );
  }
}