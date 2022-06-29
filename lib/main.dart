import 'package:flutter/material.dart';

import 'new_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UniUPI',
      home: NewTxn(),
    );
  }
}
