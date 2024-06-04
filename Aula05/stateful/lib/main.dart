import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;
  String msg = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Exemplo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('clicou $contador vezes no botao'),
              Text(contador.toString()),
              Text(msg, style: const TextStyle(color: Colors.red),),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              (contador < 10) ? contador++ : msg ="Limite atingido";
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
