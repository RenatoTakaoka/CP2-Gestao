import 'package:flutter/material.dart';
import 'package:navegacao/contato.dart';

class SecondPage extends StatelessWidget {
  final Contato contato;
  const SecondPage({super.key, required this.contato});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bem vindo ${contato.nome}'),),
      body: Center(
        child: ElevatedButton(
          child: const Text('Voltar'),
          onPressed: () {
            Navigator.pop(
              context
            );
          },
        ),
      ),
    );
  }
}