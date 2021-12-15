import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<int> _index = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("1461900168-Megi Saputra-Sore"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 130,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                scrollDirection: Axis.horizontal,
                itemCount: _index.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    width: 80,
                    height: 90,
                    child: Center(
                      child: Text('Sore ${_index[index]}'),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 300,
              child: GridView.builder(
                padding: EdgeInsets.all(8),
                itemCount: _index.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text('PTM ${_index[index]}'),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}