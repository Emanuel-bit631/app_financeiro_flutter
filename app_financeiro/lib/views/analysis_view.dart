import 'package:flutter/material.dart';

class AnalysisView extends StatelessWidget {
  const AnalysisView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Análise Financeira"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Resumo de Gastos",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            _bar("Alimentação", 0.7, Colors.red),
            _bar("Transporte", 0.4, Colors.orange),
            _bar("Lazer", 0.3, Colors.purple),
            _bar("Contas", 0.8, Colors.blue),

            const SizedBox(height: 30),

            const Card(
              child: ListTile(
                title: Text("Gasto total do mês"),
                trailing: Text("R\$ 2.500"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _bar(String label, double value, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          const SizedBox(height: 5),
          LinearProgressIndicator(
            value: value,
            color: color,
            backgroundColor: Colors.grey[300],
          )
        ],
      ),
    );
  }
}