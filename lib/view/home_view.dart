import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_project/controller/controller.dart';
import 'package:mobx_project/view/widgets/body_widget.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<Controller>();

    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) => Text(
            controller.isValid ? "MobX Formulário" : "MobX Formulário Inválido",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: BodyWidget(),
      ),
    );
  }
}
