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
          Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('1500.0'),
              subtitle: Text('Conta: 123-4'),
            )
           ),
          Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('2500.0'),
              subtitle: Text('Conta: 2334-4'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('3500.0'),
              subtitle: Text('Conta: 333-4'),
            ),
          )
        ],
      ),
    ),
  )
);