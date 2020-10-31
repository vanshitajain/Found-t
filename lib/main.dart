import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
        home: HomePage()
    )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem = [
    'Attendence',
    'Marks',
    'Time Table',
    ' BUY! RENT! SELL!',
    'Find Rommie!',
    'Find Your Flat',
    'Your Notes',
    'Account',
  ];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          backgroundColor: Colors.grey[600],
          elevation: 0,
          leading: Icon(Icons.menu),
          title: Text("FOUND!T", style: TextStyle(
            fontSize: 30.0,
            fontFamily: 'Chewy',
            fontWeight: FontWeight.bold,
            letterSpacing: 2.5,
          ),),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
            )
          ],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Container(
                      height: 150,
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: _listItem.map((item) =>
                            Card(
                              color: Colors.transparent,
                              elevation: 0,

                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomRight,
                                        colors: [
                                          Colors.red.withOpacity(.5),
                                          Colors.purple.withOpacity(.5),
                                        ]
                                    )
                                ),
                                child: Container(
                                  height: 50,
                                  margin: EdgeInsets.only(top: 100.0,
                                      left: 20.0,
                                      right: 20.0,
                                      bottom: 15.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(child: Text(item,
                                      style: TextStyle(
                                        color: Colors.grey[900],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),)),
                                  ),
                                ),

                              ),

                            )).toList(),
                      ),
                    )
                ),
              ],
            ),
          ),
        ),

      );
  }
}