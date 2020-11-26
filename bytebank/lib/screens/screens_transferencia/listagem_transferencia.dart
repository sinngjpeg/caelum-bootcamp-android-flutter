import 'package:bytebank/components/item_transferencia.dart';
import 'package:bytebank/models/transferecia.dart';
import 'package:bytebank/screens/screens_transferencia/formulario.dart';
import 'package:flutter/material.dart';

class ListaDeTransferencia extends StatefulWidget {
  final List<Transferencia> transferencias = List();
  @override
  State<StatefulWidget> createState() {
    return ListaDeTransferenciaState();
  }
}

class ListaDeTransferenciaState extends State<ListaDeTransferencia> {
  @override
  Widget build(BuildContext context) {
    debugPrint('*********** ListaDeTransferencias -> build **********');

    return Scaffold(
      appBar: AppBar(
        title: Text('Transferencias'),
      ),
      body: ListView.builder(
        itemCount: widget.transferencias.length,
        itemBuilder: (BuildContext context, int index) {
          final Transferencia transferencia = widget.transferencias[index];
          return ItemDeTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future<Transferencia> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioDeTransferencia();
          }));
          future.then((transferenciaRecebida) {
            if (transferenciaRecebida != null) {
              debugPrint('chegou no then do future: $transferenciaRecebida');

              setState(() {
                widget.transferencias.add(transferenciaRecebida);
                debugPrint('Lista atualizada: ' +
                    widget.transferencias.length.toString());
              });
            }
          });
        },
      ),
    );
  }
}
