import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      body: Card(
        child: Column(
          children: <Widget>[
            Text('?????????????/'),
            Text('?????????????/'),
            Text('?????????????/'),
            Text('?????????????/'),
            Text('?????????????/'),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Transferencia'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    )));