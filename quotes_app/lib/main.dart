import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: quote_list(),
    theme: ThemeData(fontFamily: 'Lato'),

  ));
}

class quote_list extends StatefulWidget {
  @override
  _quote_listState createState() => _quote_listState();
}

class _quote_listState extends State<quote_list> {
  
  List <Quote> quotes = [
    Quote (author: "Nelson Mandela", text: "It always seems impossible until it's done"),
    Quote (author: "Ayrtonn Senna", text: "If you no longer go for a gap that exists, you are no longer a racing driver"),
    Quote (author: "Elon Musk", text: "When something is important enough you do it even if the odds are not in your favor"),
  ];

  Widget quote_template (quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
        children: <Widget>[

          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black
            ),
          ),
          
          SizedBox(
            height: 6,
            child: const DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.black
              ),
            ),
          ),

          Text(
            quote.author,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black
            ),
          )

        ],
      ),

      )
      
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Text("Quotes"),
        centerTitle: true,
      ),

      body: Column(
        
        children: quotes.map((quote) => quote_template(quote)).toList(),
      ),
      
    );
  }
}