import '../components/bottom_button.dart';
import 'package:calculadora_imc/components/contador.dart';
import 'package:calculadora_imc/components/custom_card.dart';
import 'package:calculadora_imc/components/gender_content.dart';

import 'package:calculadora_imc/components/slider_altura.dart';

import 'package:flutter/material.dart';

enum Genero { masculino, feminino }

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  Genero? gender;
  int altura = 120;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {     
                      setState(() {
                        gender = Genero.masculino;
                      });
                    },
                    child: CustomCard(
                      active: gender == Genero.masculino,
                      child: const GenderContent(
                        icon: Icons.male,
                        label: 'Masculino',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Genero.feminino;
                      });
                    },
                    child: CustomCard(
                      active: gender == Genero.feminino,
                      child: const GenderContent(
                        icon: Icons.female,
                        label: 'Feminino',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              child: SliderAltura(
                onChanged: (double valor) {
                  setState(() {
                    altura = valor.toInt();
                  });
                  
                }, 
                altura: altura,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: Contador(),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    child: Contador(),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(buttonTitle: 'Calcular IMC'),
        ],
      ),
    );
  }
}
