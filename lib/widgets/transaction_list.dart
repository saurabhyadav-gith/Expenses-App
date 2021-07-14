import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TranscationList extends StatelessWidget {
  final List<Transaction> transactions;

  TranscationList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width, // adding height of the device
      child: transactions.isEmpty
          ? Column(
              children: [
                Text(
                  'No transactions added',
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 20,
                ),
                // sized box can be given to give space between widgets
                Image.asset(
                  'assets/images/waiting.png',
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Text(
                          'Rs ' + transactions[index].amount.toStringAsFixed(2),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            // color: Colors.purple, or
                            color: Theme.of(context).primaryColorDark,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            // color: Colors.purple,
                            color: Theme.of(context).primaryColor,
                            width: 2,
                          ),
                        ),
                        padding: EdgeInsets.all(5),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transactions[index].title,
                            style: Theme.of(context).textTheme.title,
                            // TextStyle(
                            //   fontWeight: FontWeight.bold,
                            //   fontSize: 18,
                            // ),
                          ),
                          Text(
                            DateFormat.yMMMd().format(transactions[index].date),
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              // color: Colors.grey,
                              color: Theme.of(context).primaryColor,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
