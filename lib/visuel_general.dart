import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  final Widget body;

  const MyHomePage({Key? key, required this.title, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(title),
    ),
    drawer: const NavDrawerLeft(),
    endDrawer: const NavDrawerRight(),
    body: body,
  );
}

class NavDrawerLeft extends StatelessWidget {
  const NavDrawerLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              '',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/Logo_mbel.png'))
            )
          ),
          ListTile(
            leading: const Icon(Icons.sports_soccer),
            title: const Text('Football'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.sports_basketball),
            title: const Text('Basket'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.sports_tennis),
            title: const Text('Tennis'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.sell),
            title: const Text('Meilleures ventes'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.filter_list),
            title: const Text('Filtres'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

class NavDrawerRight extends StatelessWidget {
  const NavDrawerRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'Mon compte',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Paramètres'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text('Panier'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.view_list),
            title: const Text('Liste d\'attente'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.sell),
            title: const Text('Code promotionnels'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Déconnexion'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

