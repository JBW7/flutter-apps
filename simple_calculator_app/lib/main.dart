import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(

    home: home()

  ));
}

// button dimensions
double button_width = 100;
double button_height = 100;
double button_font_size = 20;


class home extends StatefulWidget {


  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
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
            color: Colors.white,
          ),
        ),
      ),


      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          
          // answer container
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

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  // answer output
                  children: [
                    Text(
                      '23922342342',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
                    ),

                    child:
                    Text(
                      'C',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: button_font_size,
                      ),
                      
                      )
                  ),
                ),
              ),

              // ± button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 7, 4, 0),
                child: SizedBox(
                  height: button_height,
                  width: button_width,

                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
                    ),

                    child:
                    Text(
                      '±',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: button_font_size,
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
                    ),

                    child:
                    Text(
                      '%',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: button_font_size,
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
                    ),

                    child:
                    Text(
                      '÷',
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

                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
                    ),

                    child:
                    Text(
                      'x',
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
                    ),

                    child:
                    Text(
                      '-',
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
                    ),

                    child:
                    Text(
                      '+',
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
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
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
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
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
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
}




