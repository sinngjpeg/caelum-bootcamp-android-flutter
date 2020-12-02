import 'package:BytebankPersist/models/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController accountNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New contact'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: fullNameController,
                style: TextStyle(fontSize: 24.0),
                decoration: InputDecoration(labelText: 'Full name'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: accountNumberController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24.0),
                  decoration: InputDecoration(
                      labelText: 'Account number', hintText: '0000'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: RaisedButton(
                    child: Text('Create'),
                    onPressed: () {
                      final String fullName = fullNameController.text;
                      final int accountNumer =
                          int.tryParse(accountNumberController.text);
                      final Contact contact = Contact(fullName, accountNumer);
                      //Salvar no Banco de Dados

                      Navigator.of(context).pop(contact);
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
