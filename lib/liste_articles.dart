import 'package:flutter/material.dart';
import 'package:ma_boutique_en_ligne/product_box.dart';

class ArticlesList extends StatelessWidget {
  final Type productBoxToTest = ProductBox0;

  const ArticlesList({Key? key,
required this.title}) : super(key: key);
final String title;

  @override
  Widget build(BuildContext context) {
    /*return ListView(
        padding: const EdgeInsets.fromLTRB(2.0, 4.0, 2.0, 4.0),
        children: const <Widget>[
          ProductBox0(
            name: "Sneakers",
            description: "Des chaussures confortables !",
            price: 80,
            image: "sneakers.jpg"),
          ProductBox0(
            name: "Casquette",
            description: "Parce qu'il est important d'avoir du style.",
            price: 15,
            image: "casquette.jpeg"),
          ProductBox0(
            name: "Sweat",
            description: "Le top du top !",
            price: 12,
            image: "sweat.jpg"),
          ProductBox0(
            name: "T-shirt",
            description: "La sobriété a toujours du bon.",
            price: 20,
            image: "tshirt.jpg"),
        ],
      );*/
    /*return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index){
        return ProductBox2(
            name: items[index]["name"],
            description: items[index]["description"],
            price: items[index]["price"],
            image: items[index]["image"]
        );
      },
    );*/
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return GridView.count(
      childAspectRatio: (itemWidth / itemHeight),
      crossAxisCount: 2,
      children: List.generate(
        items.length,
        (index) => ProductBox1(
          name: items[index]["name"],
          description: items[index]["description"],
          price: items[index]["price"],
          image: items[index]["image"]
        ),
      ),
    );
  }
}