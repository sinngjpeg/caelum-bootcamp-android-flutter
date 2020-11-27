import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      body: Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text('?'),
          subtitle: Text('?'),
        )
      ),
      appBar: AppBar(
        title: Text('Transferencia'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    )));
