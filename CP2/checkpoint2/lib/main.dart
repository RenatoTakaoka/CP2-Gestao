import 'package:flutter/material.dart';
import 'lista_contato.dart';
import 'contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const Run(),
    );
  }
}

class Run extends StatefulWidget {
  const Run({super.key});

  @override
  State<Run> createState() => _RunState();
}

class _RunState extends State<Run> {

  final List<Contato> listaContato = ListaContato().mockedContatos;
  Icon iconeVazio = const Icon(Icons.favorite_border);
  Icon iconeCheio = const Icon(Icons.favorite);

  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Listview Builder $contador'),
      ),
      body: ListView.builder(
        itemCount: listaContato.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=$index'),
            ),
            title: Text(
              listaContato[index].nomeCompleto,
            ),
            subtitle: Text(listaContato[index].email),
            trailing: IconButton(
              icon: listaContato[index].id ? iconeCheio : iconeVazio,
              onPressed: () {
                setState(() {
                    if (listaContato[index].id == false) {
                      listaContato[index].id = true; 
                      contador++;
                    }
                    else {
                      listaContato[index].id = false;
                      contador--;
                    }
                });
              },
            ),
          );
        },
      ),
    );
  }
}

