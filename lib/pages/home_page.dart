import 'package:dount_app_5sa/tabs/burger_tab.dart';
import 'package:dount_app_5sa/tabs/donut_tab.dart';
import 'package:dount_app_5sa/tabs/pancakes_tab.dart';
import 'package:dount_app_5sa/tabs/pizza_tab.dart';
import 'package:dount_app_5sa/tabs/smoothie_tab.dart';
import 'package:dount_app_5sa/utils/my_tab.dart';
import 'package:dount_app_5sa/utils/shopping_cart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    const MyTab(
      iconPath: 'lib/icons/donut.png',
      label: "Donut",
    ),
    const MyTab(iconPath: 'lib/icons/burger.png', label: "Burguer"),
    const MyTab(
      iconPath: 'lib/icons/smoothie.png',
      label: "Smoothie",
    ),
    const MyTab(
      iconPath: 'lib/icons/pancakes.png',
      label: "Pancakes",
    ),
    const MyTab(
      iconPath: 'lib/icons/pizza.png',
      label: "Pizza",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // Icono de la izquierda
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        body: Column(
          children: [
            // 1. Texto principal (Text)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Text(
                    "I want to eat ",
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    "Eat",
                    style: TextStyle(
                      // Tamaño de letra
                      fontSize: 32,
                      // Negritas
                      fontWeight: FontWeight.bold,
                      // Subrayado
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            // 2. Pestañas (TabBar)
            TabBar(
              tabs: myTabs,
            ),

            // 3. Contenido de pestañas (TabBarView)
            Expanded(
              child: TabBarView(children: [
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PancakesTab(),
                PizzaTab()
              ]),
            ),
            // 4. Carrito (Car)
            const ShoppingCart()
          ],
        ),
      ),
    );
  }
}
