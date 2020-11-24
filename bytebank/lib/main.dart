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
      body: Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text('1500.0'),
          subtitle: Text('Conta: 123-4'),
        )
       ),
    ),
  )
);