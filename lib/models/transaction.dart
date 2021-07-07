import 'package:flutter/foundation.dart';

// foundation.dart exposes required which will otherwise not be recognized by dart
class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date; //pre defined in dart

  Transaction({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
  });
}
