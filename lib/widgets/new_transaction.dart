import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewTransaction extends StatefulWidget {
  final Function addTransaction;
  NewTransaction(this.addTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final textController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    String title = textController.text;
    double amount = double.parse(amountController.text);

    if (title.isEmpty || amount <= 0) {
      return;
    }

    widget.addTransaction(
      title,
      amount,
    );

    Navigator.of(context).pop();
    // the above line is to close the add new transaction menu as soon as the
    // user hits done filling the title and amount and saves.
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              // onChanged: (value) {
              //   titleInput = value;
              // },
              controller: textController,
              onSubmitted: (_) {
                submitData();
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Details',
              ),
              // onChanged: (value) {
              //   amount = value;
              // },
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (val) => {
                submitData(),
              },
            ),
            TextButton(
              onPressed: submitData,
              child: Text(
                'Save',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      elevation: 5,
    );
  }
}
