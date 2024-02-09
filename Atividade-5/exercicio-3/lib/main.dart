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
          title: Text('Lista de Disciplinas'),
        ),
        body: DisciplinaList(),
      ),
    );
  }
}

class DisciplinaList extends StatelessWidget {
  final List<String> disciplinas = [
    'Matemática',
    'Ciências',
    'História',
    'Geografia',
    'Português',
    'Inglês',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: disciplinas.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.symmetric(vertical: 5.0),
          color: Colors.grey[300],
          child: ListTile(
            title: Text(disciplinas[index]),
            onTap: () {
              // Adicione ação ao tocar no item da lista, se necessário
              print('Clicou na disciplina: ${disciplinas[index]}');
            },
          ),
        );
      },
    );
  }
}
