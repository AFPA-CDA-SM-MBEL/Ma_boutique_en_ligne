import 'package:flutter/material.dart';
import 'package:ma_boutique_en_ligne/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: "Flutter Demo",
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const MyHomePage(
      title: "Flutter Demo Home Page",
    ),
  );
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<String>> data = Product.fetchProducts();

  void _refresh() {
    setState(() {
      data = Product.fetchProducts();
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(widget.title),),
    body: Center(
      child: FutureBuilder<List<String>>(
        future: data,
        builder: (context, snapshot){
          if(snapshot.hasError){
            return Text(snapshot.error.toString());
          }else if(snapshot.hasData){
            final List<String> data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => GestureDetector(
                child: Text(data[index]),
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
