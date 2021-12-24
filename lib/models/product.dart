import 'package:ma_boutique_en_ligne/models/server.dart';

class Product {
  static final List<String> columns = ["id", "name", "image", "price", "rating"];

  final String name, image;
  final int id;
  final double price;
  int rating;

  Product(
      this.id,
      this.name,
      this.image,
      this.price,
      this.rating,
  );

  factory Product.fromMap(Map<String, dynamic> data) => Product(
    data[columns[0]],
    data[columns[1]],
    data[columns[2]],
    double.parse(data[columns[3]]),
    data[columns[4]]
  );

  static Future<List<Product>> getProductList() async{
    Server server = Server();
    List<Map<String, dynamic>> tmp = await server.getProductList();
    return tmp.map<Product>(
        (json) => Product.fromMap(json)
    ).toList();
  }
}