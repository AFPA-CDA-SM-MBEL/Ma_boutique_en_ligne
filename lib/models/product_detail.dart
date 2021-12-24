import 'package:ma_boutique_en_ligne/models/product.dart';
import 'package:ma_boutique_en_ligne/models/server.dart';

class ProductDetails extends Product{
  static final List<String> columns = ["id", "name", "description", "image", "price", "rating", "category"];

  final String description, category;

  ProductDetails(
      id,
      name,
      this.description,
      image,
      price,
      rating,
      this.category
  ):super(id, name, image, price, rating);

  factory ProductDetails.fromMap(Map<String, dynamic> data) => ProductDetails(
      data[columns[0]],
      data[columns[1]],
      data[columns[2]],
      data[columns[3]],
      double.parse(data[columns[4]]),
      data[columns[5]],
      data[columns[6]]
  );

  static Future<List<ProductDetails>> getProductDetails() async{
    Server server = Server();
    List<Map<String, dynamic>> tmp = await server.getProductDetails(25);
    return tmp.map<ProductDetails>(
            (json) => ProductDetails.fromMap(json)
    ).toList();
  }
}