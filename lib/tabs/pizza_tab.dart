import 'package:dount_app_5sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  // Callback para cuando se añade una dona
  final Function(String flavor, int price) onDonutAdded;

  // list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    [
      "Pizza Margarita",
      "Pizza Hut",
      "120",
      Colors.blue,
      "lib/images/PizzaMargarita.png"
    ],
    [
      "Pizza Pepperoni",
      "Pizza Hut",
      "145",
      Colors.red,
      "lib/images/PizzaPeperoni.png"
    ],
    [
      "Pizza Suprema",
      "Pizza Hut",
      "150",
      Colors.purple,
      "lib/images/PizzaSuprema.png"
    ],
    [
      "Pizza Cuatro Quesos",
      "Pizza Hut",
      "195",
      Colors.brown,
      "lib/images/PizzaCuatro.png"
    ],
    [
      "Pizza Hawaiana",
      "Pizza Hut",
      "135",
      Colors.blue,
      "lib/images/PizzaHawaiana.png"
    ],
    [
      "Pizza Vegetariana",
      "Pizza Hut",
      "200",
      Colors.red,
      "lib/images/PizzaVegetariana.png"
    ],
    [
      "Pizza de Carne",
      "Pizza Hut",
      "155",
      Colors.purple,
      "lib/images/PizzaCarne.png"
    ],
    [
      "Pizza de Pollo Buffalo",
      "Pizza Hut",
      "150",
      Colors.brown,
      "lib/images/PizzaPollo.png"
    ],
  ];

  PizzaTab({super.key, required this.onDonutAdded});

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
