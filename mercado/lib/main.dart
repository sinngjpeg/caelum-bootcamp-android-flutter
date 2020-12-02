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
        body: Column(
          children: <Widget>[
            TextField(),
            TextField(),
            TextField(),
            RaisedButton(
              child: Text('Cadastrar'),
              onPressed: () {
                final String nome = _controladorNome.text;
                final int quantidade = int.tryParse(_controladorQuantidade.text);
                final double valor = double.tryParse(_controladorValor.text);

                final Produto produtoNovo = Produto(nome, quantidade,valor);
                print(produtoNovo);
              },
            )
          ],
        ),
      ),
    );
  }
}
