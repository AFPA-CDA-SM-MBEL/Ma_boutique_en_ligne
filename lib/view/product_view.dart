import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma_boutique_en_ligne/models/product.dart';
import 'package:ma_boutique_en_ligne/models/product_detail.dart';
import 'package:ma_boutique_en_ligne/models/server.dart';
import 'package:ma_boutique_en_ligne/view/rating_box.dart';

class ProductView extends StatelessWidget{
  final Product product;

  const ProductView({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(2),
    height: 250,
    child: Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.network(
            "http://${Server.ip.join(".")}:${Server.port}/${product.image}",
            width: MediaQuery.of(context).size.width * 0.5,
            fit: BoxFit.fill,
            errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
              return Image.asset(
                "assets/images/point_d_interrogation.png",
                width: MediaQuery.of(context).size.width * 0.5,
              );
            },
          ),
          Expanded(child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("ID: ${product.id}"),
                Text(
                  product.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Price: ${product.price} €"),
                Text("Image: ${product.image}"),
                RatingBox(rate: product.rating,),
              ],
            ),
          ))
        ],
      ),
    ),
  );
}

class ProductDetailsView extends StatelessWidget{
  final ProductDetails product;

  const ProductDetailsView({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(2),
    height: 250,
    child: Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.network(
            "http://${Server.ip.join(".")}:${Server.port}/${product.image}",
            width: MediaQuery.of(context).size.width * 0.5,
            fit: BoxFit.fill,
            errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
              return Image.asset(
                "assets/images/point_d_interrogation.png",
                width: MediaQuery.of(context).size.width * 0.5,
              );
            },
          ),
          Expanded(child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("ID: ${product.id}"),
                Text(
                  product.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  product.description,
                  textAlign: TextAlign.center,
                ),
                Text("Price: ${product.price} €"),
                Text("Image: ${product.image}"),
                Text("Category: ${product.category}"),
                RatingBox(rate: product.rating,),
              ],
            ),
          ))
        ],
      ),
    ),
  );
}