// ignore_for_file: unused_field, must_be_immutable

import 'package:ecommerce_weal/data.dart';
import 'package:ecommerce_weal/detils_product.dart';
import 'package:flutter/material.dart';

class HOMEPAGE extends StatelessWidget {
  const HOMEPAGE({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildsearchandmenu = _searchandmenu();
    Widget buildtextcategories = _text('Categories');
    Widget buuildcategories = _categories();
    Widget destance = const SizedBox(
      height: 20,
    );
    Widget buildtextselling = _text('Best Selling');
    Widget product = _products();

    return ListView(
      children: [
        buildsearchandmenu,
        buildtextcategories,
        destance,
        buuildcategories,
        destance,
        buildtextselling,
        product
      ],
    );
  }

  Widget _searchandmenu() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.grey[200],
              filled: true,
              border: InputBorder.none,
              prefixIcon: const Icon(Icons.search),
              hintText: "Search ",
            ),
          )),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.menu,
              size: 40,
            ),
          )
        ],
      ),
    );
  }

  Widget _text(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(text,
          style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.bold,
              fontSize: 20)),
    );
  }

  Widget _categories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          buildcolumncategories(Icons.laptop, 'Laptop'),
          buildcolumncategories(Icons.mobile_friendly, 'Mobile'),
          buildcolumncategories(Icons.watch, 'Watch'),
          buildcolumncategories(Icons.bolt_rounded, 'Other'),
          buildcolumncategories(Icons.gif, 'Gifts')

          // const SizedBox(width: 20),
        ],
      ),
    );
  }

  buildcolumncategories(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(100)),
            padding: const EdgeInsets.all(15),
            child: Icon(
              icon,
              size: 40,
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget _products() {
    return GridView.builder(
      physics:
          const NeverScrollableScrollPhysics(), //  من غير مش هيشتغل عشان الابعاد لازم هيا واللي تحتها
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisExtent: 200),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => detils_products(
                        dataitems: items[index],
                      )));
            },
            child: Card(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.all(20),
                      height: 100,
                      width: 190,
                      color: Colors.white,
                      child: Image.asset(items[index]['image'].toString())),
                  Text(
                    items[index]['titel'].toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(items[index]['describtin'].toString()),
                  Text(
                    items[index]['price'].toString(),
                    style: const TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
