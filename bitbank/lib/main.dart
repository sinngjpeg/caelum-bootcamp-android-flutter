import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      body: ListaTransferencia(),
      appBar: AppBar(
        title: Text('Transferencia'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    )));

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        item_tranferencia('1000', '1020'),
        item_tranferencia('2000', '1020'),
        item_tranferencia('3000', '1030'),
        item_tranferencia('4000', '1040'),
      ],
    );
  }
}

class item_tranferencia extends StatelessWidget {
  final String valor;
  final String numeroConta;

  item_tranferencia(this.valor, this.numeroConta);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(valor),
        subtitle: Text(numeroConta),
      ),
    );
  }
}
