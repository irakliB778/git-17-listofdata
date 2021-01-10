import 'package:flutter/material.dart';
import 'quote.dart';

class NewCardWidget extends StatelessWidget {
  final Quote quote;
  NewCardWidget({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quote.text,
                style: TextStyle(color: Colors.grey[900], fontSize: 10.0),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                quote.author,
                style: TextStyle(color: Colors.red, fontSize: 20.0),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ));
  }
}
