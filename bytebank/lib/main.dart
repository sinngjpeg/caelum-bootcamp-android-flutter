import 'package:flutter/material.dart';

void main() => runApp(ByteBank());

class ByteBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(home: FormularioDeTransferencia()));
  }
}

class FormularioDeTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario de transferencia'),
      ),
      body: Column(
        children: [ItemDeTransferencia(Transferencia(123, 1800.0))],
      ),
    );
  }
}

class ItemDeTransferencia extends StatelessWidget {
  Transferencia transferencia;

  ItemDeTransferencia(this.transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(transferencia.valor.toString()),
        subtitle: Text(transferencia.conta.toString()),
      ),
    );
  }
}

class ListaDeTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemDeTransferencia(Transferencia(456 - 9, 1500.0)),
        ItemDeTransferencia(Transferencia(3545 - 0, 2500.0)),
        ItemDeTransferencia(Transferencia(7852 - 0, 1200.0)),
      ],
    );
  }
}

class Transferencia {
  int conta;
  double valor;

  Transferencia(this.conta, this.valor);
}
