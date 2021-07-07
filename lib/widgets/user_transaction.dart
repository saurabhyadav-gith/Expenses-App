import 'package:flutter/material.dart';
import '/widgets/new_transaction.dart';
import '/widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  UserTransactionState createState() => UserTransactionState();
}

class UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 'T1',
      title: 'Shoes',
      amount: 78.32,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T2',
      title: 'Grocery',
      amount: 12.32,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T1',
      title: 'Shoes',
      amount: 78.32,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T2',
      title: 'Grocery',
      amount: 12.32,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T1',
      title: 'Shoes',
      amount: 78.32,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T2',
      title: 'Grocery',
      amount: 12.32,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T1',
      title: 'Shoes',
      amount: 78.32,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T2',
      title: 'Grocery',
      amount: 12.32,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T1',
      title: 'Shoes',
      amount: 78.32,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T2',
      title: 'Grocery',
      amount: 12.32,
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(String title, double amount) {
    final newTransaction = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );
    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addTransaction),
        TranscationList(_userTransactions),
      ],
    );
  }
}
