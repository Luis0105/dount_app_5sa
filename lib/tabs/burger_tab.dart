import 'package:dount_app_5sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  // Callback para cuando se añade una dona
  final Function(String flavor, int price) onDonutAdded;

  // list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    [
      "Hamburguesa Clásica",
      "McDonald's",
      "95",
      Colors.blue,
      "lib/images/HambClasica.png"
    ],
    [
      "Cheeseburger Doble",
      "McDonald's",
      "115",
      Colors.red,
      "lib/images/HambDoble.png"
    ],
    [
      "Hamburguesa BBQ",
      "McDonald's",
      "125",
      Colors.purple,
      "lib/images/HambBBQ.png"
    ],
    [
      "Hamburguesa Cheese",
      "McDonald's",
      "195",
      Colors.brown,
      "lib/images/HambBlue.png"
    ],
    [
      "Hamburguesa Veggie",
      "McDonald's",
      "105",
      Colors.blue,
      "lib/images/HambVeg.png"
    ],
    [
      "Hamburguesa Mexicana",
      "McDonald's",
      "150",
      Colors.red,
      "lib/images/HambMexicana.png"
    ],
    [
      "Hamburguesa de Pollo",
      "McDonald's",
      "110",
      Colors.purple,
      "lib/images/HambPollo.png"
    ],
    [
      "Hamburguesa Smash",
      "McDonald's",
      "155",
      Colors.brown,
      "lib/images/HambSmash.png"
    ],
  ];

  BurgerTab({super.key, required this.onDonutAdded});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // Prepa 1: Cómo se va a organizar
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // Número de columnas
            crossAxisCount: 2,
            // Proporción entre ancho y alto
            childAspectRatio: 1 / 1.9),
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
