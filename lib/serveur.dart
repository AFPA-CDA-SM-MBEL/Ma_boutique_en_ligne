import 'dart:convert';

import 'package:http/http.dart' as http;

class Server{
  static const List<int> ip = [10, 105, 81, 27];
  static const int port = 3000;

  Future<List<Map<String, String>>> getProductDetails(String identifiant, String mdp) async {
    String url = "http://${ip.join(".")}:$port/${Routes.getConnexion}";
    final http.Response  response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          "Content-Type": "application/json"
        },
        body: jsonEncode(<String, String>{
          "identifiant": identifiant,
          "mdp": mdp,
        })
    );
    if(response.statusCode==200){
      return json.decode(response.body).cast<Map<String, dynamic>>();
    }else{
      throw Exception("Unable to fetch products from the REST API");
    }
  }
}

abstract class Routes {
  static const String getConnexion = "tryConnection";
}