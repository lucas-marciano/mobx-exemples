import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_project/controller/controller.dart';
import 'package:mobx_project/view/widgets/body_widget.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

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
