import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final String donutStore;
  // dynamic porque será de tipo color
  final dynamic donutColor;
  final dynamic imageName;

  const DonutTile(
      {super.key,
      required this.donutFlavor,
      required this.donutStore,
      required this.donutPrice,
      required this.donutColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        // color: donutColor[50],
        decoration: BoxDecoration(
            color: donutColor[50],
            // Esquinas redondeadas
            borderRadius: BorderRadius.circular(24)),
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
                        topRight: Radius.circular(24)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: donutColor[800]),
                  ),
                ),
              ],
            ),
            // Donut frice
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
              child: Image.asset(imageName),
            ),
            // Donut flavor text
            Padding(
              padding: EdgeInsets.only(bottom: 4),
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
                color: Colors.grey,
              ),
            ),
            // Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround
              children: [
                Icon(Icons.favorite_border, color: Colors.pink[400],),
                Icon(Icons.add, color: Colors.grey[800]),
                // Text("Add", style: TextStyle(decoration: TextDecoration
              ],
            )
          ],
        ),
      ),
    );
  }
}
