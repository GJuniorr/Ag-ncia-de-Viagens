import 'package:flutter/material.dart';

class sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sobre nós')),
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
              leading: Icon(Icons.home),
              title: Text('Tela de Início'),
              iconColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, 'tl');
              },
            ),
            ListTile(
              leading: Icon(Icons.flight),
              title: Text('Destinos'),
              iconColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, 'd');
              },
            ),
            ListTile(
              leading: Icon(Icons.card_travel),
              title: Text('Pacotes de Viagem'),
              iconColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, 'pacote');
              },
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('Contato'),
              iconColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, 'contato');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box_rounded),
              title: Text('Sobre Nós'),
              iconColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, 'sobre');
              },
            )
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: Text(
            'A "Explore Mundo" é uma Agência de Viagens que mesmo sendo nova no mercado já promete realizar sua viagem do sonho por um preço acessível. \nCom destinos para: \n"Madrid - Espanha", \n"Paris - França", \n"Milão - Itália", \n"Amsterdã - Holanda" e \n"Oslo - Noruega"',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
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
