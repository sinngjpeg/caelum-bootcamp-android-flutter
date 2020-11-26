import 'package:bytebank/components/campo_texto.dart';
import 'package:bytebank/models/transferecia.dart';
import 'package:flutter/material.dart';

///////// FORMULARIO DE TRANSFERENCIA
class FormularioDeTransferencia extends StatefulWidget {
  @override
  FormularioDeTransferenciaState createState() =>
      FormularioDeTransferenciaState();
}

class FormularioDeTransferenciaState extends State<FormularioDeTransferencia> {
  final TextEditingController controladorDoCampoConta = TextEditingController();

  final TextEditingController controladorDoCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Criando transferencia'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CampoTexto(controladorDoCampoConta, 'Número da conta', '0000'),
              CampoTexto(controladorDoCampoValor, 'Valor', '0.00',
                  icone: Icons.monetization_on),
              RaisedButton(
                child: Text('Adicionar'),
                onPressed: () => criaTransferencia(context),
              )
            ],
          ),
        ));
  }

  void criaTransferencia(BuildContext context) {
    debugPrint('Clicou em ADICIONAR');

    int conta = int.tryParse(controladorDoCampoConta.text);
    double valor = double.tryParse(controladorDoCampoValor.text);

    if (conta != null && valor != null) {
      final transferenciaCriada = Transferencia(conta, valor);
      debugPrint('Transferencia Criada: $transferenciaCriada');
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
