import 'package:mobx/mobx.dart';
part 'counter_controller.g.dart';

class CounterController = CounterControllerBase with _$CounterController;

abstract class CounterControllerBase with Store {
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
