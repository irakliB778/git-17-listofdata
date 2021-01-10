import 'package:flutter/material.dart';
import 'quote.dart';
import 'NewcardWidget.dart';

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
        author: 'jame joise'),
    Quote(
        text: 'Contrary to popular belief, Lorem Ipsum is not',
        author: 'jack London')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Center(
          child: Text('String App'),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes
            .map((quote) => NewCardWidget(
                quote: quote,
                delete: () {
                  setState(() {
                    return quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
