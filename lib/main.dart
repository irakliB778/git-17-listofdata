import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: 'Lorem Ipsum iss simply dummy text of the printing ',
        author: 'james joise'),
    Quote(
        text: 'It is a long established fact that a reader will ',
        author: 'james joise'),
    Quote(
        text: 'Contrary to popular belief, Lorem Ipsum is not',
        author: 'jack London')
  ];
  Widget quoteTempelate(Quote quot) {
    return Card(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quot.text,
                style: TextStyle(color: Colors.grey[900], fontSize: 10.0),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                quot.author,
                style: TextStyle(color: Colors.red, fontSize: 20.0),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Center(
          child: Text('String app'),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes.map((quote) => quoteTempelate(quote)).toList(),
      ),
    );
  }
}
