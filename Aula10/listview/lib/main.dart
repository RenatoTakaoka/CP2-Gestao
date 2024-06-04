import 'package:flutter/material.dart';
import 'lista_contato.dart';
import 'contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListaPage(),
    );
  }
}

class ListaPage extends StatelessWidget {
  ListaPage({super.key});

  final List<Contato> listaContato = ListaContato().mockedContatos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Listview Builder'),
      ),
      body: ListView.separated(
        itemCount: listaContato.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 11, 65, 109),
              child: Text((listaContato[index].nomeCompleto[0] + listaContato[index].nomeCompleto[1]).toUpperCase()),
            ),
            title: Text(
              listaContato[index].nomeCompleto,
            ),
            subtitle: Text(listaContato[index].email),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.blueAccent,
          );
        },
      ),
    );
  }
}
