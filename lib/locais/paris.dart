import 'package:flutter/material.dart';

class paris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child:
                Text('Paris - França', style: TextStyle(color: Colors.white))),
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
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          children: [
            Container(height: 40),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Início', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushNamed(context, 'tl');
              },
            ),
            ListTile(
              leading: Icon(Icons.flight, color: Colors.white),
              title: Text('Destinos', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushNamed(context, 'd');
              },
            ),
            ListTile(
              leading: Icon(Icons.card_travel, color: Colors.white),
              title: Text('Pacotes de Viagem',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushNamed(context, 'pacote');
              },
            ),
            ListTile(
              leading: Icon(Icons.call, color: Colors.white),
              title: Text('Contato', style: TextStyle(color: Colors.white)),
              iconColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, 'contato');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box_rounded, color: Colors.white),
              title: Text('Sobre Nós', style: TextStyle(color: Colors.white)),
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
                child: Image.asset('assets/images/Paris.jpg')),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Transform.translate(
                offset: Offset(0, -50),
                child: Text(
                  'Paris é famosa pelas casas de alta costura, museus de arte clássica, como o Louvre, e monumentos como a Torre Eiffel. \nA França também é conhecido pelos vinhos e pela cozinha sofisticada.',
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
                      'Museu do Louvre, Arco do Triunfo. \nPalácio de Versalhes. \nCatedral de Notre-Dame. \nSão locais que valem a pena conhecer!',
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
