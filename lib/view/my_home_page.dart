import 'package:flutter/material.dart';
import 'package:ma_boutique_en_ligne/models/product.dart';
import 'package:ma_boutique_en_ligne/models/product_detail.dart';
import 'package:ma_boutique_en_ligne/view/product_view.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  //State<MyHomePage> createState() => _MyHomePageState2();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<Product>> data = Product.getProductList();

  void _refresh() {
    setState(() {
      data = Product.getProductList();
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(widget.title),),
    body: Center(
      child: FutureBuilder<List<Product>>(
        future: data,
        builder: (context, snapshot){
          if(snapshot.hasError){
            return Text(snapshot.error.toString());
          }else if(snapshot.hasData){
            final List<Product> data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => ProductView(
                product: data[index],
              ),
            );
          }else{
            return const Center(child: CircularProgressIndicator(),);
          }
        },
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: _refresh,
      tooltip: "Refresh",
      child: const Icon(Icons.refresh),
    ),
  );
}

class _MyHomePageState2 extends State<MyHomePage> {
  Future<List<ProductDetails>> data = ProductDetails.getProductDetails();

  void _refresh() {
    setState(() {
      data = ProductDetails.getProductDetails();
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(widget.title),),
    body: Center(
      child: FutureBuilder<List<ProductDetails>>(
        future: data,
        builder: (context, snapshot){
          if(snapshot.hasError){
            return Text(snapshot.error.toString());
          }else if(snapshot.hasData){
            final List<ProductDetails> data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => ProductDetailsView(
                product: data[index],
              ),
            );
          }else{
            return const Center(child: CircularProgressIndicator(),);
          }
        },
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: _refresh,
      tooltip: "Refresh",
      child: const Icon(Icons.refresh),
    ),
  );
}