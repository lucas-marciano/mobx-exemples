import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  String name = '';

  @observable
  String lastName = '';

  @computed
  String get completName => "$name $lastName";

  @action
  changeName(String name) {
    this.name = name;
  }

  @action
  changeLastName(String lastName) {
    this.lastName = lastName;
  }
}
