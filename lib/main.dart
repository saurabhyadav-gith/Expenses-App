import '/transaction.dart';
import 'package:flutter/material.dart';

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
  final List<Transaction> transactions = [
    Transaction(
      id: 'T1',
      title: 'Shoes',
      amount: 78.32,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T2',
      title: 'Grocery',
      amount: 128.32,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Container(
              child: Text('CHART'),
              width: double.infinity,
            ),
            elevation: 5,
          ),
          Column(
            children: transactions.map((transaction) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        transaction.amount.toString(),
                      ),
                    ),
                    Column(
                      children: [
                        Text(transaction.title),
                        Text(
                          transaction.date.toString(),
                        )
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
