import 'package:dount_app_5sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  // Callback para cuando se añade una dona
  final Function(String flavor, int price) onDonutAdded;

  // list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    [
      "Smoothie de Fresa",
      "Coffeetech",
      "50",
      Colors.blue,
      "lib/images/SmooFresa.png"
    ],
    [
      "Smoothie Tropical",
      "Coffeetech",
      "55",
      Colors.red,
      "lib/images/SmooTropical.png"
    ],
    [
      "Smoothie Verde",
      "Coffeetech",
      "65",
      Colors.purple,
      "lib/images/SmooVerde.png"
    ],
    [
      "Smoothie de Avena",
      "Coffeetech",
      "75",
      Colors.brown,
      "lib/images/SmooAvena.png"
    ],
    [
      "Smoothie Detox",
      "Coffeetech",
      "55",
      Colors.blue,
      "lib/images/SmooDetox.png"
    ],
    [
      "Smoothie de Durazno",
      "Coffeetech",
      "50",
      Colors.red,
      "lib/images/SmooDurazno.png"
    ],
    [
      "Smoothie de Chocolate",
      "Coffeetech",
      "70",
      Colors.purple,
      "lib/images/SmooChocolate.png"
    ],
    [
      "Smoothie de Zarzamora",
      "Coffeetech",
      "50",
      Colors.brown,
      "lib/images/SmooZarzamora.png"
    ],
  ];

  SmoothieTab({super.key, required this.onDonutAdded});

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
