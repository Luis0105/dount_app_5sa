import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final String donutStore;
  // dynamic porque será de tipo color
  final dynamic donutColor;
  final dynamic imageName;
  final VoidCallback onAdd; // NUEVO: callback para botón "+"

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutStore,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName,
    required this.onAdd, // NUEVO
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: donutColor[800],
                    ),
                  ),
                ),
              ],
            ),
            // Donut image
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
                child: Image.asset(imageName),
              ),
            ),
            // Donut flavor text
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                donutFlavor,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Text(
              donutStore,
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey[600],
              ),
            ),
            // Icons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.favorite_border,
                    color: Colors.pink,
                  ),
                  // NUEVO: botón que llama a onAdd
                  IconButton(
                    icon: Icon(Icons.add, color: Colors.grey[600]),
                    onPressed: onAdd,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
