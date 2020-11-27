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
        item_tranferencia(),
      ],
    );
  }
}

class item_tranferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text('200.0'),
        subtitle: Text('2000'),
      ),
    );
  }
}
