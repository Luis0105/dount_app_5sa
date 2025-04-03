import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  // Ruta del archivo
  //C:/luis/documentos/4sa/tópicos/donut.png
  final String iconPath;
  final String label;

  const MyTab({super.key, required this.label, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.grey[200], borderRadius: BorderRadius.circular(16)
                // Borde redondeado
                ),
            child: Image.asset(
              // Ruta del archivo
              iconPath,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(fontSize: 12, color: Colors.black),
          )
        ],
      ),
    );
  }
}
