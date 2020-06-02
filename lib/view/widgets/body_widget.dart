import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_project/controller/controller.dart';

class BodyWidget extends StatelessWidget {
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
    final controller = GetIt.I.get<Controller>();

    return Padding(
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
          Observer(
            builder: (_) {
              return RaisedButton(
                child: Text("Salvar"),
                onPressed: controller.isValid ? () {} : null,
              );
            },
          ),
        ],
      ),
    );
  }
}
