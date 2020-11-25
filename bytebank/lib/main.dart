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
        title: Text('Criando transferencia'),
      ),
      body: Column(
        children: [
          Padding(
            padding : const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontSize: 24.8
            ),
            decoration: InputDecoration(
              labelText: 'Numero da conta',
              hintText: '0000'
            ),
          ),
          ),
          Padding(
            padding : const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.8),
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                  fontSize: 24.8
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on),
                  labelText: 'Valor',
                  hintText: '0.00'
              ),
            ),
          ),
          RaisedButton(
            child: Text('Adicionar'),
          )
        ],
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
