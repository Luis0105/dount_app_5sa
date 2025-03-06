import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // Prepa 1: Cómo se va a organizar
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // Número de columnas
            crossAxisCount: 2),
        // Cuántos elementos
        itemCount: 4,
        padding: const EdgeInsets.all(12),
        // Qué elementos se construirá
        itemBuilder: (contex, index) {
          return;
        });
  }
}
