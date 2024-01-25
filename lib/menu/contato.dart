import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class contato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Opções para Contato')),
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
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                height: 180,
                width: 328,
                color: Colors.lightBlue,
                child: Column(
                  children: [
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.whatsapp),
                      title: Text('(79) 00000-0000'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.instagram),
                      title: Text('explorandomundo._'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.envelope),
                      title: Text('explorandomundo@outlook.com'),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
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
