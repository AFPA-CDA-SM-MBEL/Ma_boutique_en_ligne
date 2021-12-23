import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ma_boutique_en_ligne/widgets/my_caroussel.dart';
//import 'package:ma_boutique_en_ligne/widgets/my_image_slider_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Ma boutique en ligne'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String identifiant = "", mdp = "";

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 10));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.red,
        actions: [
          const Icon(
            Icons.search,
          ),
          const Icon(
            Icons.account_circle,
          ),
          IconButton(
              icon: const Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const MyCartPage(title: "Voir ma commande")));
              }

          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Nos meilleures ventes",
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20, color: Colors.blueAccent),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: ImageSliderDemo(),
              ),
              const Text(
                'Se connecter',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue
                ),
              ),
              const Divider(),
              const Text('Saisir votre identifiant :'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Votre identifiant',
                  ),
                  onChanged: (value){
                    setState(() {
                      identifiant = value;
                    });
                  },
                ),
              ),
              const Text('Saisir votre identifiant :'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    hintText: 'Votre identifiant',
                  ),
                  onChanged: (value){
                    setState(() {
                      mdp = value;
                    });
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(identifiant);
                  print(mdp);
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCartPage extends StatelessWidget {
  const MyCartPage({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 10));
    return Scaffold(
      appBar: AppBar(
        title: const Text("retour à la page l'accueil"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Votre panier",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25, color: Colors.blue
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 100,
                  color: Colors.white30,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:80),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                                "Nom de l'article",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal
                                ),
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip
                            ),
                            Text(
                                "Prix €",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal
                                ),
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip
                            ),
                            Text(
                                "Quantité",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal
                                ),
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip
                            ),
                          ]
                        ),
                      ),
                      Image.asset("lib/assets/logoLeCoque.png")
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.blue,
                indent: 40,
                endIndent: 40,
                thickness: 2,
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  //height: 100,
                  color: Colors.white30,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                            "Résumé de la commande",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontStyle: FontStyle.normal
                            ),
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip
                        ),
                        const Text(
                            "Sous-total €",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                fontStyle: FontStyle.normal
                            ),
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip
                        ),
                        const Text(
                            "Mode de livraison",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                fontStyle: FontStyle.normal
                            ),
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip
                        ),
                        const Text(
                            "Total TVA incluse",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                fontStyle: FontStyle.normal
                            ),
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip
                        ),
                        ElevatedButton(
                          style: style,
                          onPressed: () {},
                          child: const Text('Paiement'),
                        ),
                        Image.asset("lib/assets/cartebancaire.png"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}