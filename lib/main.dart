import 'package:flutter/material.dart';
import 'package:upi_test_app/dummy.dart';

import 'new_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UniPI',
      initialRoute: 'index',
      routes: {
        'index': (context) => const NewTxn(),
        'dummy': (context) => const DummyPage(),
      },
    );
  }
}

Drawer myDrawer(BuildContext context) {
  return Drawer(
    elevation: 15,
    child: Container(
        padding: const EdgeInsets.all(10),
        color: Theme.of(context).primaryColorDark,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: const Icon(Icons.add),
              title: const Text("New Transaction"),
              onTap: () => const NewTxn().comeHere(context),
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: const Icon(Icons.history),
              title: const Text("Transaction History"),
              onTap: () => const DummyPage().comeHere(context),
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: const Icon(Icons.money),
              title: const Text("Expense Report"),
              onTap: () => const DummyPage().comeHere(context),
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: const Icon(Icons.info_outline),
              title: const Text("About Me"),
              onTap: () => const DummyPage().comeHere(context),
            ),
          ],
        )),
  );
}

AppBar myAppBar() {
  return AppBar(
    centerTitle: true,
    elevation: 20,
    title: const Text('UniPI'),
  );
}