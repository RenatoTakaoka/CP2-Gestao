import 'package:calculadora_imc/components/custom_card.dart';
import 'package:calculadora_imc/components/gender_select.dart';
import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: const CustomCard(
                      child: GenderSelect(
                        icon: Icons.male,
                        label: 'Masculino',
                      ),
                    ),
                    onTap: () {

                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: const CustomCard(
                      child: GenderSelect(
                        icon: Icons.female,
                        label: 'Feminino',
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: CustomCard(
              child: Column(
                children: [
                  Text(
                    "Altura",
                    style: labelTextStyle,
                  ),
                  Text("183"),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(),
                ),
                Expanded(
                  child: CustomCard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
