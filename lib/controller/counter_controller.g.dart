// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterController on CounterControllerBase, Store {
  final _$nameAtom = Atom(name: 'CounterControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$lastNameAtom = Atom(name: 'CounterControllerBase.lastName');

  @override
  String get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  final _$CounterControllerBaseActionController =
      ActionController(name: 'CounterControllerBase');

  @override
  dynamic changeName(String name) {
    final _$actionInfo = _$CounterControllerBaseActionController.startAction(
        name: 'CounterControllerBase.changeName');
    try {
      return super.changeName(name);
    } finally {
      _$CounterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeLastName(String lastName) {
    final _$actionInfo = _$CounterControllerBaseActionController.startAction(
        name: 'CounterControllerBase.changeLastName');
    try {
      return super.changeLastName(lastName);
    } finally {
      _$CounterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
lastName: ${lastName}
    ''';
  }
}
