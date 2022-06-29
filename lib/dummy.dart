import 'package:flutter/material.dart';
import 'main.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({Key? key}) : super(key: key);

  void comeHere(context) {
    Navigator.of(context).pushReplacementNamed(
      'dummy',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer(context),
      appBar: myAppBar(),
      body: const Center(
        child: Text("Hi !"),
      ),
    );
  }
}
