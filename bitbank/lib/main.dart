import 'package:flutter/material.dart';

void main() => runApp(BitBankApp());

class BitBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: FormularioTransferencia(),
    ));
  }
}

////////////////// FORMULARIO TRANSFERENCIA

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/////////////////// LISTA DE TRANSFERENCIA

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferencia'),
      ),
      body: Column(
        children: <Widget>[
          item_tranferencia(Transferencia(1000, 1010)),
          item_tranferencia(Transferencia(2000, 1020)),
          item_tranferencia(Transferencia(3000, 1030)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}

//////////////ITEM TRANSFERENCIA

class item_tranferencia extends StatelessWidget {
  final Transferencia transferencia;

  item_tranferencia(this.transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(transferencia.valor.toString()),
        subtitle: Text(transferencia.numeroConta.toString()),
      ),
    );
  }
}

//////////// TRANSFERENCIA

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}
