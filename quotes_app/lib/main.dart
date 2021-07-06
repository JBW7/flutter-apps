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
        
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
      ),
      
    );
  }
}