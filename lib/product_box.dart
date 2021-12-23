import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<Map<String, dynamic>> items = [
  {
    "name": "Sneakers",
    "description": "Des chaussures confortables !",
    "price": 80,
    "image": "sneakers.jpg"
  },
  {
    "name": "Casquette",
    "description": "Parce qu'il est important d'avoir du style.",
    "price": 15,
    "image": "casquette.jpeg"
  },
  {
    "name": "Sweat",
    "description": "Le top du top !",
    "price": 12,
    "image": "sweat.jpg"
  },
  {
    "name": "T-shirt",
    "description": "La sobriété a toujours du bon.",
    "price": 20,
    "image": "tshirt.jpg"
  }
];

class ProductBox0 extends StatelessWidget {
  const ProductBox0(
      {Key? key, required this.name, required this.description, required this.price,
        required this.image}) : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset("assets/images/" + image),
                  Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              Text(description),
                              Text("price: " + price.toString()),
                            ],
                          )))
                ])));
  }
}

class ProductBox1 extends StatelessWidget {
  const ProductBox1(
      {Key? key, required this.name, required this.description, required this.price,
        required this.image}) : super(key : key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        child: Card(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset("assets/images/" + image),
                  Container(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold)),
                          Text(description),
                          Text("price: " + price.toString()),
                        ],
                      ))
                ])));
  }
}