import 'package:dount_app_5sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  // Callback para cuando se añade una dona
  final Function(String flavor, int price) onDonutAdded;

  // list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    [
      "Pancakes Clásicos",
      "Kodiak Cakes",
      "60",
      Colors.blue,
      "lib/images/PancakesClasico.png"
    ],
    [
      "Pancakes con Frutas",
      "Kodiak Cakes",
      "75",
      Colors.red,
      "lib/images/PancakeFruta.png"
    ],
    [
      "Pancakes Oreo",
      "Kodiak Cakes",
      "90",
      Colors.purple,
      "lib/images/PancakeOreo.png"
    ],
    [
      "Pancakes Red Velvet",
      "Kodiak Cakes",
      "95",
      Colors.brown,
      "lib/images/PancakeVelvet.png"
    ],
    [
      "Pancakes con Helado",
      "Kodiak Cakes",
      "100",
      Colors.blue,
      "lib/images/PancakeHelado.png"
    ],
    [
      "Pancakes de Manzana",
      "Kodiak Cakes",
      "80",
      Colors.red,
      "lib/images/PancakeManzana.png"
    ],
    [
      "Pancakes de Canela",
      "Kodiak Cakes",
      "70",
      Colors.purple,
      "lib/images/PancakeCanela.png"
    ],
    [
      "Pancakes de Coco",
      "Kodiak Cakes",
      "85",
      Colors.brown,
      "lib/images/PancakeCoco.png"
    ],
  ];

  PancakesTab({super.key, required this.onDonutAdded});

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
