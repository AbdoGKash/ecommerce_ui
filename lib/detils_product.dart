// ignore_for_file: no_logic_in_create_state, camel_case_types

import 'package:flutter/material.dart';

class detils_products extends StatefulWidget {
  final dataitems;

  const detils_products({super.key, this.dataitems});

  @override
  State<detils_products> createState() => _detils_productsState();
}

class _detils_productsState extends State<detils_products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _navigatorbar(),
        endDrawer: const Drawer(),
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shop),
              Text(
                ' Shopping',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                ' Items',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.orange),
              )
            ],
          ),
          backgroundColor: Colors.grey[200],
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: ListView(
          children: [
            SizedBox(
                width: 400,
                height: 300,
                child: Image.asset(widget.dataitems['image'])),
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                widget.dataitems['titel'],
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                widget.dataitems['describtin'],
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Text(
                widget.dataitems['price'],
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Color :  ',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.orange)),
                ),
                const Text(
                  '  Gray  ',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const Text(
                  '  black  ',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: const Text(
                'Size :  35  36  37  38  39  ',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(40),
              child: MaterialButton(
                padding: const EdgeInsets.all(20),
                color: Colors.black,
                onPressed: () {},
                child: const Text(
                  'Add To Cert',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }

  Widget _navigatorbar() {
    return BottomNavigationBar(
      iconSize: 40,
      selectedItemColor: Colors.orange,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "*"),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined), label: "*"),
        BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "*")
      ],
    );
  }
}
