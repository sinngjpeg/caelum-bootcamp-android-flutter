import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          title: Text('Transferencias'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
        body: Column(
          children: [
            iTemDeTransferencia('1500.0', '456-9'),
            iTemDeTransferencia('2500.0', '3545-0'),
            iTemDeTransferencia('1200.0', '7852-0'),
          ],
        ),
      )),
    );

class iTemDeTransferencia extends StatelessWidget {
  String valor;
  String conta;

  iTemDeTransferencia(this.valor, this.conta);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text('3500.0'),
        subtitle: Text('Conta: 333-4'),
      ),
    );
  }
}
