// import 'package:intl/intl.dart';
// import 'models/transaction.dart';

import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // String titleInput, amount;
  // OR we can use instead of titleInput and amout is the textEditorController

  final textController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                child: Text('Chart'),
                elevation: 2,
                color: Colors.blue,
              ),
            ),
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
