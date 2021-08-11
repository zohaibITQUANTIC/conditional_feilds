import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conditional fields',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: myHome(),
    );
  }
}

var gender = ['Male', 'Female'];

class myHome extends StatefulWidget {
  const myHome({Key? key}) : super(key: key);

  @override
  _myHomeState createState() => _myHomeState();
}

var maleCard = true;
var femaleCard = true;

class _myHomeState extends State<myHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            child: Column(
              children: [
                Text(
                  'Select your Gender',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        maleCard = false;
                        femaleCard = true;
                      });
                    },
                    child: Text('Male')),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        maleCard = true;
                        femaleCard = false;
                      });
                    },
                    child: Text('Female')),
                femaleCard
                    ? Card()
                    : Card(
                        child: Column(
                          children: [
                            Icon(
                              Icons.female,
                              size: 200,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Please Enter Female Name',
                                labelText: 'Female Name',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Please Enter message',
                                labelText: 'Female Massege',
                                border: OutlineInputBorder(),
                              ),
                            )
                          ],
                        ),
                      ),
                maleCard
                    ? Card()
                    : Card(
                        child: Column(
                          children: [
                            Icon(
                              Icons.person,
                              size: 200,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Please Enter male Name',
                                labelText: 'Male Name',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Please Enter message',
                                labelText: 'Male Massege',
                                border: OutlineInputBorder(),
                              ),
                            )
                          ],
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
