import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Músicas'),
        ),
        body: MusicaList(),
      ),
    );
  }
}

class MusicaList extends StatelessWidget {
  final List<String> musicas = [
    'Aonde quer que eu vá',
    'Time of our lives',   
    'I wanna be yours',
    'Seu astral',
    'Rockstar',
    'Come as you are',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: musicas.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.symmetric(vertical: 5.0),
          color: Colors.grey[300],
          child: ListTile(
            title: Text(musicas[index]),
            onTap: () {
              // Adicione ação ao tocar no item da lista, se necessário
              print('Clicou na música: ${musicas[index]}');
            },
          ),
        );
      },
    );
  }
}
