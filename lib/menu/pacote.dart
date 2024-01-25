import 'package:flutter/material.dart';

class pacote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Pacotes de Viagens')),
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
              title: Text('Início'),
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
      body: ListView(
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Title(
                    color: Colors.orangeAccent,
                    child: Text('Madrid',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent))),
                Text(
                    'Descubra a cultura vibrante de Madrid.\n Preço = R\$1.200',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.orange)),
                    onPressed: () {},
                    child: Text(
                      'Comprar',
                      style: TextStyle(color: Colors.white),
                    )),

                SizedBox(height: 10), // Espaçamento

                Title(
                    color: Colors.blueAccent,
                    child: Text('Paris',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent))),
                Text('Explore a Cidade do Amor.\n Preço = R\$1.500',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                    onPressed: () {},
                    child: Text(
                      'Comprar',
                      style: TextStyle(color: Colors.white),
                    )),

                SizedBox(height: 10), // Espaçamento

                Title(
                    color: Colors.greenAccent,
                    child: Text('Milão',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent))),
                Text('Experimente a Moda e a Arte .\n Preço = R\$1.700',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.green)),
                    onPressed: () {},
                    child: Text(
                      'Comprar',
                      style: TextStyle(color: Colors.white),
                    )),

                SizedBox(height: 10), // Espaçamento

                Title(
                    color: Colors.orangeAccent,
                    child: Text('Amsterdã',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent))),
                Text(
                    'Aproveite os canais pitorescos de Amsterdã.\n Preço = R\$1.300',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.orange)),
                    onPressed: () {},
                    child: Text(
                      'Comprar',
                      style: TextStyle(color: Colors.white),
                    )),

                SizedBox(height: 10), // Espaçamento
                Title(
                    color: Colors.blueAccent,
                    child: Text('Oslo',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent))),
                Text(
                    'Descubra a beleza de Oslo e seus fiordes.\n Preço = R\$1.600',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                    onPressed: () {},
                    child: Text(
                      'Comprar',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
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
