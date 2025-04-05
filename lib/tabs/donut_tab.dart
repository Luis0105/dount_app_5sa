import 'package:dount_app_5sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  // Callback para cuando se añade una dona
  final Function(String flavor, int price) onDonutAdded;

  // list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    [
      "Dona de Chocolate",
      "Krispy Kremex",
      "40",
      Colors.blue,
      "lib/images/DonaChocolate.png"
    ],
    [
      "Dona Rellena de Crema",
      "Krispy Kremex",
      "45",
      Colors.red,
      "lib/images/DonaRellena.png"
    ],
    [
      "Dona de Fresa",
      "Krispy Kremex",
      "85",
      Colors.purple,
      "lib/images/DonaFresa.png"
    ],
    [
      "Dona de Frambuesa",
      "Krispy Kremex",
      "95",
      Colors.brown,
      "lib/images/DonaFrambuesa.png"
    ],
    [
      "Dona Rellena de Nutella",
      "Krispy Kremex",
      "35",
      Colors.blue,
      "lib/images/DonaNutella.png"
    ],
    [
      "Dona de Oreo",
      "Krispy Kremex",
      "50",
      Colors.red,
      "lib/images/DonaOreo.png"
    ],
    [
      "Dona Con Miel",
      "Krispy Kremex",
      "30",
      Colors.purple,
      "lib/images/DonaMiel.png"
    ],
    [
      "Dona de Almendra",
      "Krispy Kremex",
      "55",
      Colors.brown,
      "lib/images/DonaAlmendra.png"
    ],
  ];

  DonutTab({super.key, required this.onDonutAdded});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // Prepa 1: Cómo se va a organizar
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // Número de columnas
            crossAxisCount: 2,
            // Proporción entre ancho y alto
            childAspectRatio: 1 / 1.8),
        // Cuántos elementos
        itemCount: donutsOnSale.length,
        padding: const EdgeInsets.all(12),
        // Qué elementos se construirá
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutStore: donutsOnSale[index][1],
            donutPrice: donutsOnSale[index][2],
            donutColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4],
            // Llamada a callback
            onAdd: () {
              onDonutAdded(
                donutsOnSale[index][0],
                int.parse(donutsOnSale[index][2]),
              );
            },
          );
        });
  }
}
