import 'package:flutter/material.dart';

class madrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Madrid - Espanha',
                style: TextStyle(color: Colors.yellowAccent))),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CampodePesquisa(),
              );
            },
          ),
        ],
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        backgroundColor: Colors.red,
        child: Column(
          children: [
            Container(height: 40),
            ListTile(
              leading: Icon(Icons.home, color: Colors.yellowAccent),
              title:
                  Text('Início', style: TextStyle(color: Colors.yellowAccent)),
              iconColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, 'tl');
              },
            ),
            ListTile(
              leading: Icon(Icons.flight, color: Colors.yellowAccent),
              title: Text('Destinos',
                  style: TextStyle(color: Colors.yellowAccent)),
              iconColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, 'd');
              },
            ),
            ListTile(
              leading: Icon(Icons.card_travel, color: Colors.yellowAccent),
              title: Text('Pacotes de Viagem',
                  style: TextStyle(color: Colors.yellowAccent)),
              iconColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, 'pacote');
              },
            ),
            ListTile(
              leading: Icon(Icons.call, color: Colors.yellowAccent),
              title:
                  Text('Contato', style: TextStyle(color: Colors.yellowAccent)),
              iconColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, 'contato');
              },
            ),
            ListTile(
              leading:
                  Icon(Icons.account_box_rounded, color: Colors.yellowAccent),
              title: Text('Sobre Nós',
                  style: TextStyle(color: Colors.yellowAccent)),
              onTap: () {
                Navigator.pushNamed(context, 'sobre');
              },
            )
          ],
        ),
      ),
      body: ListView(children: [
        Column(
          children: [
            Container(
                height: 300,
                width: 300,
                child: Image.asset('assets/images/Madrid.jpg')),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Transform.translate(
                offset: Offset(0, -50),
                child: Text(
                  'Madrid, a capital da Espanha, situada no centro do país, é uma cidade de avenidas elegantes e parques grandes e bem cuidados, como o Buen Retiro.',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Title(
                      color: Colors.yellowAccent,
                      child: Text('Pontos Turisticos',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Museu do Prado, El Rastro. \nMuseu Nacional Centro de Arte Reina Sofía. São locais que valem a pena conhecer!',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

class CampodePesquisa extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {},
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text('Resultados para: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Digite algo para pesquisar'),
    );
  }
}
