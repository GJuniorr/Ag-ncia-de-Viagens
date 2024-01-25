import 'package:flutter/material.dart';

class milao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Milão - Itália',
                style: TextStyle(color: Colors.redAccent))),
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
        backgroundColor: Colors.greenAccent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.greenAccent,
        child: Column(
          children: [
            Container(height: 40),
            ListTile(
              leading: Icon(Icons.home, color: Colors.redAccent),
              title: Text('Início', style: TextStyle(color: Colors.redAccent)),
              onTap: () {
                Navigator.pushNamed(context, 'tl');
              },
            ),
            ListTile(
              leading: Icon(Icons.flight, color: Colors.redAccent),
              title:
                  Text('Destinos', style: TextStyle(color: Colors.redAccent)),
              onTap: () {
                Navigator.pushNamed(context, 'd');
              },
            ),
            ListTile(
              leading: Icon(Icons.card_travel, color: Colors.redAccent),
              title: Text('Pacotes de Viagem',
                  style: TextStyle(color: Colors.redAccent)),
              onTap: () {
                Navigator.pushNamed(context, 'pacote');
              },
            ),
            ListTile(
              leading: Icon(Icons.call, color: Colors.redAccent),
              title: Text('Contato', style: TextStyle(color: Colors.redAccent)),
              iconColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, 'contato');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box_rounded, color: Colors.redAccent),
              title:
                  Text('Sobre Nós', style: TextStyle(color: Colors.redAccent)),
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
                child: Image.asset('assets/images/Milão.jpg')),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Transform.translate(
                offset: Offset(0, -50),
                child: Text(
                  'Milão, uma metrópole na região da Lombardia ao norte da Itália, é uma capital mundial da moda e do design. \nCidade da bolsa de valores nacional, trata-se de um centro financeiro também conhecido pelas suas lojas e pelos seus restaurantes sofisticados..',
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
                      'Catedral de Milão, Teatro alla Scala. \nConvento Santa Maria delle Grazie. \nCatedral Gothic Duomo di Milano. \nSão locais que valem a pena conhecer!',
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
