import 'dart:convert';

import 'package:http/http.dart' as http;

class Product {
  static const String fileName = "getbdd";
  static const List<int> ip = [10, 105, 81, 27];
  static const int port = 3000;

  static Future<List<String>> fetchProducts() async{
    String url = "http://${ip.join(".")}:$port/$fileName";
    final http.Response response = await http.get(Uri.parse(url));
    if(response.statusCode==200){
      final dataMap = json.decode(response.body).cast<Map<String, dynamic>>();
      return dataMap.map<String>(
          (json) => json.toString()
      ).toList();
    }else{
      throw Exception("Unable to fetch products from the REST API");
    }
  }
}