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
          title: Text('Cadastrando produto'),
        ),
        body: Column(
          children: <Widget>[
            TextField(),
            TextField(),
            TextField(),
            RaisedButton(
              child: Text('Cadastrar'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class Produto {
  final String nome;
  final int quantidade;
  final double valor;

  Produto(
    this.nome,
    this.quantidade,
    this.valor,
  );
}
