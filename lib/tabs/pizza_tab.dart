import 'package:dount_app_5sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
// list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    [
      "Ice Cream",
      "Krispy Kremex",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],
    [
      "Strawberry",
      "Juanito Donut",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png"
    ],
    ["Grape Ape", "Donuts", "84", Colors.purple, "lib/images/grape_donut.png"],
    [
      "Choco",
      "Mike Donuts",
      "95",
      Colors.brown,
      "lib/images/chocolate_donut.png"
    ],
  ];

  PizzaTab({super.key});

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
        itemCount: 4,
        padding: const EdgeInsets.all(12),
        // Qué elementos se construirá
        itemBuilder: (contex, index) {
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutStore: donutsOnSale[index][1],
            donutPrice: donutsOnSale[index][2],
            donutColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4],
          );
        });
  }
}
