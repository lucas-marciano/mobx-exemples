// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterController on CounterControllerBase, Store {
  final _$counterAtom = Atom(name: 'CounterControllerBase.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$CounterControllerBaseActionController =
      ActionController(name: 'CounterControllerBase');

  @override
  dynamic increment() {
    final _$actionInfo = _$CounterControllerBaseActionController.startAction(
        name: 'CounterControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$CounterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
