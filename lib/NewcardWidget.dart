import 'package:flutter/material.dart';
import 'quote.dart';

class NewCardWidget extends StatelessWidget {
  final Quote quote;
  final Function delete;
  NewCardWidget({this.quote, this.delete});

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
              ),
              FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('delete'),
              ),
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ));
  }
}
