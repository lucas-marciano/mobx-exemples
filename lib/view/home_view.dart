import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_project/controller/controller.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = Controller();
  _textField({String label, onChanged, String Function() onError}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: label,
        errorText: onError == null ? null : onError(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobX Formulário"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Observer(
                builder: (_) {
                  return _textField(
                    label: "Name",
                    onChanged: controller.client.setName,
                    onError: controller.validationName,
                  );
                },
              ),
              SizedBox(height: 12.0),
              Observer(
                builder: (_) {
                  return _textField(
                    label: "E-mail",
                    onChanged: controller.client.setEmail,
                    onError: controller.validationEmail,
                  );
                },
              ),
              SizedBox(height: 12.0),
              Observer(
                builder: (_) {
                  return _textField(
                    label: "CPF",
                    onChanged: controller.client.setCpf,
                    onError: controller.validationCpf,
                  );
                },
              ),
              SizedBox(height: 20.0),
              Observer(builder: (_) {
                return RaisedButton(
                  child: Text("Salvar"),
                  onPressed: controller.isValid ? () {} : null,
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
