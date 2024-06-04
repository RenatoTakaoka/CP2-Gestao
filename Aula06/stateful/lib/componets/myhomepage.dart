import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double tamanho = 300;
  final max = 500;
  final min = 50;
  final incremento = 50;
  final double s = 50;
  final double m = 300;
  final double l = 500;
  double redBar = 0;
  double greenBar = 0;
  double blueBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter State'),
          actions: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  (tamanho > min) ? (tamanho = tamanho - incremento) : tamanho;
                });
              },
            ),
            IconButton(
              icon: const Text('S'),
              onPressed: () {
                setState(() {
                  tamanho = s;
                });
              },
            ),
            IconButton(
              icon: const Text('M'),
              onPressed: () {
                setState(() {
                  tamanho = m;
                });
                
              },
            ),
            IconButton(
              icon: const Text('L'),
              onPressed: () {
                setState(() {
                  tamanho = l;
                });
                
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  if (tamanho < max) {
                    tamanho = tamanho + incremento;
                  }
                });
                
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Icon(
                  Icons.lock_clock,
                  size: tamanho,
                  color: Color.fromRGBO(redBar.toInt(), greenBar.round(), blueBar.round(), 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.red,
                      value: redBar,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          redBar = value;
                        });
                      },
                    ),
                  ),
                  Text(
                    redBar.round().toString(),
                    style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.green,
                      value: greenBar,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          greenBar = value;
                        });
                      },
                    ),
                  ),
                  Text(
                    greenBar.toInt().toString(),
                    style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.blue,
                      value: blueBar,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          blueBar = value;
                        });
                      },
                    ),
                  ),
                  Text(
                    blueBar.round().toString(),
                    style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}