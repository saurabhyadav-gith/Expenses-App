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
          Card(
            child: Text('TRANSACTIONS'),
          ),
          Row(
            children: [
              Card(
                child: Text('Gabbar'),
              )
            ],
          )
        ],
      ),
    );
  }
}
