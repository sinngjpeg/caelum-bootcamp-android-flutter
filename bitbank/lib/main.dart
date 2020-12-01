import 'package:bitbank/screens/lista_transferencia.dart';
import 'package:flutter/material.dart';

void main() => runApp(BitbankApp());

class BitbankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: ListaTransferencias()
    );
  }
}
