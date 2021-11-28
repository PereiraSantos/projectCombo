import 'package:flutter/material.dart';
import 'package:project_combo/calculator/pages/components/card.dart';

class CalculationPage extends StatelessWidget {
  const CalculationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculadora")),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardCalculator(),
          ],
        ),
      ),
    );
  }
}

