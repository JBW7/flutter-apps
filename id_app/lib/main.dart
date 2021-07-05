import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: id_card(),
));

class id_card extends StatefulWidget {
  @override
  _id_cardState createState() => _id_cardState();
}

class _id_cardState extends State<id_card> {
  
  int grand_prix_wins = 15;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,

      appBar: AppBar(
        title: Text("Id Card"),
        centerTitle: true,
        backgroundColor: Colors.blue[500],
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            grand_prix_wins += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue[500],
      ),

      body: Padding(
        
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/maxverstappen_avatar.jpg"),
                radius: 40,
              ),
            ),

            Divider(
              height: 60,
              color: Colors.grey[300]
            ),
   
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 18
              ),
            ),

            SizedBox(
              height: 10
            ),

            Text(
              'Max Verstappen',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(
              height: 30
            ),

            Text(
              'DRIVER NUMBER',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 18
              ),
            ),

            SizedBox(
              height: 10
            ),

            Text(
              '33',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(
              height: 30
            ),

            Text(
              'AGE (2021)',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 18
              ),
            ),

            SizedBox(
              height: 10
            ),

            Text(
              '24',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(
              height: 30
            ),
            
            Text(
              'GRAND PRIX WINS',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 18
              ),
            ),

            SizedBox(
              height: 10
            ),

            Text(
              '$grand_prix_wins',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(
              height: 30
            ),

            Row(
              children: <Widget> [
                Icon(
                  Icons.email,
                  color: Colors.grey[400]
                ),

                SizedBox(
                  width: 10
                ),

                Text(
                  "maxverstappen@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          
            SizedBox(
              height: 25
            ),

            Center(
              child: Image(
              image: AssetImage("assets/redbullracinghonda_logo.png"),
              height: 100,
              width: 200
              ),
            ),
          ],
        ),
      ),
    );
  }
}



