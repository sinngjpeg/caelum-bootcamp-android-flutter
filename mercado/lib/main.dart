import 'package:flutter/material.dart';
import 'package:mercado/models/produto.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorQuantidade = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastrando produto'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controladorNome,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorQuantidade,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorValor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: RaisedButton(
                  child: Text('Cadastrar'),
                  onPressed: () {
                    final String nome = _controladorNome.text;
                    final int quantidade =
                        int.tryParse(_controladorQuantidade.text);
                    final double valor =
                        double.tryParse(_controladorValor.text);
                    if (nome != null && quantidade != null && valor != null) {
                      final Produto produtoNovo =
                          Produto(nome, quantidade, valor);
                      print(produtoNovo);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
