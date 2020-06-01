import 'package:mobx/mobx.dart';
part 'client.g.dart';

class Client = _ClientBase with _$Client;

abstract class _ClientBase with Store {
  @observable
  String name;

  @observable
  String cpf;

  @observable
  String email;

  @action
  setName(String value) => name = value;

  @action
  setCpf(String value) => cpf = value;

  @action
  setEmail(String value) => email = value;
}
