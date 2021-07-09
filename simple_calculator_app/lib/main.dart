import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MaterialApp(

    home: home()

  ));
}




// button dimensions
double button_width = 100;
double button_height = 100;
double button_font_size = 26;
int button_bgcolor_value = 800;

var answer = '';
var user_input = '' ; 


class home extends StatefulWidget {


  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  var user_input = '';
  var answer = '';

  @override

  
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Calculator',
          style: TextStyle(
            color: Colors.grey[200],
          ),
        ),
      ),


      body: Column(
  

        children: <Widget>[
          
          // input container
          Container(
            height: 150,
            margin: EdgeInsets.fromLTRB(7, 20, 7, 0),
            decoration: BoxDecoration(
              color: Colors.black
            ),

            child: Row(

              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Column(

                  // output
                  children: <Widget>[
                    
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        user_input,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[100],
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                      child: Text(
                        answer,
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.grey[200],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

          ),





          //buttons
          // 1st row
          Row(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // C button
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 7, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,

                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input = '';
                        answer = '0';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      'C',
                      style: TextStyle(
                        color: Colors.red[400],
                        fontSize: button_font_size,
                        fontWeight: FontWeight.bold
                      ),
                      
                      )
                  ),
                ),
              ),

              // ⌫ button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 7, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,

                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input = user_input.substring(0, user_input.length - 1);
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '⌫',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: button_font_size,
                        fontWeight: FontWeight.bold
                      ),
                      
                      )
                  ),
                ),
              ),

              // % button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 7, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input += '%';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '%',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: button_font_size,
                        fontWeight: FontWeight.bold,
                      ),
                      
                      )
                  ),
                ),
              ),
              
              // / button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 7, 7, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,

                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input += ' ÷ ';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '÷',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: button_font_size,
                        fontWeight: FontWeight.bold
                      ),
                      
                      )
                  ),
                ),
              ),
            ],
          ),

          // 2nd row
          Row(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // 7 button
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 4, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input += '7';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '7',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: button_font_size,
                      ),
                      
                      )
                  ),
                ),
              ),

              // 8 button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,

                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input += '8';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '8',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: button_font_size,
                      ),
                      
                      )
                  ),
                ),
              ),

              // 9 button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input += '9';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '9',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: button_font_size,
                      ),
                      
                      )
                  ),
                ),
              ),
              
              // x button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 7, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,

                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input += ' x ';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      ' x ',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: button_font_size,
                        fontWeight: FontWeight.bold
                      ),
                      
                      )
                  ),
                ),
              ),
            ],
          ),

          // 3rd row
          Row(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // 4 button
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 4, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,

                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input += '4';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '4',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: button_font_size,
                      ),
                      
                      )
                  ),
                ),
              ),

              // 5 button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,

                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input += '5';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '5',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: button_font_size,
                      ),
                      
                      )
                  ),
                ),
              ),

              // 6 button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input += '6';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '6',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: button_font_size,
                      ),
                      
                      )
                  ),
                ),
              ),
              
              // - button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 7, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,

                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input += ' - ';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '-',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: button_font_size,
                        fontWeight: FontWeight.bold
                      ),
                      
                      )
                  ),
                ),
              ),
            ],
          ),

          // 4th row
          Row(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // 1 button
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 4, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,

                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input += '1';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '1',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: button_font_size,
                      ),
                      
                      )
                  ),
                ),
              ),

              // 2 button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,

                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input += '2';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '2',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: button_font_size,
                      ),
                      
                      )
                  ),
                ),
              ),

              // 3 button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input += '3';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '3',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: button_font_size,
                      ),
                      
                      )
                  ),
                ),
              ),
              
              // + button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 7, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,

                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input += ' + ';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '+',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: button_font_size,
                        fontWeight: FontWeight.bold
                      ),
                      
                      )
                  ),
                ),
              ),
            ],
          ),
          
           // 5th row
          Row(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // 0 button
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 4, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,

                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        user_input += '3';
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '0',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: button_font_size,
                      ),
                      
                      )
                  ),
                ),
              ),

              // . button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,

                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[button_bgcolor_value]),
                    ),

                    child:
                    Text(
                      '.',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: button_font_size,
                      ),
                      
                      )
                  ),
                ),
              ),

              // = button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: 204,
                  child: TextButton(
                    onPressed: () {
                      equal_pressed();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                    ),

                    child:
                    Text(
                      '=',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: button_font_size,
                      ),
                      
                      )
                  ),
                ),
              ),
              
            ],
          ),

        ],

      ),
    );
  }
  
  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }
  
  // equal pressed function
  void equal_pressed() {
    String finaluserinput = user_input;
    finaluserinput = user_input.replaceAll('x', '*');
  
    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      answer = eval.toString();
    });
  }

}


