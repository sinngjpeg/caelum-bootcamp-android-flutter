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
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferencia'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
              child: Text('Confirmar'),
              onPressed: () {
                debugPrint('Clicou no confirmar');
                final int numeroConta =
                    int.tryParse(_controladorCampoNumeroConta.text);
                final double valor =
                    double.tryParse(_controladorCampoValor.text);
                if (numeroConta != null && valor != null) {
                  final transferenciaCriada = Transferencia(valor, numeroConta);
                  debugPrint('$transferenciaCriada');
                }
              })
        ],
      ),
    );
  }
}

class Editor extends StatelessWidget {
  final TextEditingController _controlador;
  final String _rotulo;
  final String _dica;

  Editor(this._controlador, this._rotulo, this._dica);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _controlador,
          style: TextStyle(fontSize: 24.0),
          decoration: InputDecoration(labelText: _rotulo, hintText: _dica),
          keyboardType: TextInputType.number,
        ));
  }
}
/////////// LISTA DE TRANSFERENCIA

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

  @override
  String toString() {
    return 'Transferencia{valor: $valor, numeroConta: $numeroConta}';
  }
}
