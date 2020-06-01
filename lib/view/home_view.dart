import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_project/controller/controller.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobX"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Formulário'),
              Observer(
                builder: (_) => TextField(
                  decoration: InputDecoration(
                    labelText: "Nome",
                  ),
                  onChanged: controller.changeName,
                ),
              ),
              Observer(
                builder: (_) => TextField(
                  decoration: InputDecoration(
                    labelText: "Sobrenome",
                  ),
                  onChanged: controller.changeLastName,
                ),
              ),
              SizedBox(height: 20),
              Observer(
                builder: (_) => Text(controller.completName),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
