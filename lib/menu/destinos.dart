import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class destinos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Explore Mundo')),
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
        /* AQUI */ body: Column(
          children: [
            // Texto acima do carrossel
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Arraste a imagem para um dos lados',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            CarouselSlider(
                items: [
                  GestureDetector(
                      child: Image.asset('assets/images/Madrid.jpg',
                          width: 250, height: 250),
                      onTap: () {
                        Navigator.pushNamed(context, 'Madrid');
                      }),
                  GestureDetector(
                      child: Image.asset('assets/images/Paris.jpg',
                          width: 250, height: 250),
                      onTap: () {
                        Navigator.pushNamed(context, 'Paris');
                      }),
                  GestureDetector(
                      child: Image.asset('assets/images/Milão.jpg',
                          width: 250, height: 250),
                      onTap: () {
                        Navigator.pushNamed(context, 'Milão');
                      }),
                  GestureDetector(
                      child: Image.asset('assets/images/Amsterdã.jpg',
                          width: 300, height: 300),
                      onTap: () {
                        Navigator.pushNamed(context, 'Ams');
                      }),
                  GestureDetector(
                      child: Image.asset('assets/images/Oslo.jpg',
                          width: 250, height: 250),
                      onTap: () {
                        Navigator.pushNamed(context, 'Oslo');
                      }),
                ],
                options: CarouselOptions(
                  aspectRatio: 1,
                  enlargeCenterPage: true,
                  enlargeFactor: 4,
                ))
          ],
        ));
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
