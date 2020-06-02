import 'package:mobx/mobx.dart';
import 'package:mobx_project/models/client.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var client = Client();

  @computed
  bool get isValid =>
      validationName() == null &&
      validationEmail() == null &&
      validationCpf() == null;

  String validationName() {
    if (client.name == null || client.name.isEmpty) {
      return "O campo Nome é obrigatório";
    } else if (client.name.length < 4 || client.name.length >= 80) {
      return "O campo Nome deve ter entre 3 e 80 caracteres";
    } else if (client.name.trim().isEmpty) {
      return "O campo Nome é obrigatório";
    }
    return null;
  }

  String validationEmail() {
    if (client.email == null || client.email.isEmpty) {
      return "O campo Email é obrigatório";
    } else if (!client.email.contains("@")) {
      return "O campo Email está inválido";
    }
    return null;
  }

  String validationCpf() {
    if (client.cpf == null || client.cpf.isEmpty) {
      return "O campo CPF é obrigatório";
    } else if (client.cpf.length != 11) {
      return "O campo CPF está inválido";
    }
    return null;
  }

  disposeData() {
    //TODO: implement the dispose call to clean the data.
  }
}
