import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Filmes'),
        ),
        body: FilmeList(),
      ),
    );
  }
}

class FilmeList extends StatelessWidget {
  final List<String> filmes = [
    'Episódio I: A Ameaça Fantasma',
    'Episódio II: Ataque dos Clones ',
    'Episódio III: A Vingança dos Sith',
    'Han Solo: Uma História Star Wars ',
    'Rogue One: Uma História Star Wars',
    'Episódio IX: A Ascensão Skywalker',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: filmes.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.symmetric(vertical: 5.0),
          color: Colors.grey[300],
          child: ListTile(
            title: Text(filmes[index]),
            leading: Icon(Icons.movie),
            onTap: () {
              // Adicione ação ao tocar no item da lista, se necessário
              print('Clicou no filme: ${filmes[index]}');
            },
          ),
        );
      },
    );
  }
}
