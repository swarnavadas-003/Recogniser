import 'package:flutter/material.dart';

import 'nextScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> itemsList = [
    'Text Scanner',
    'Barcode Scanner',
    'Label Scanner',
    'Face Detection'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Recognizer"),
      ),
      body: ListView.builder(
        itemCount: itemsList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              splashColor: Colors.blue,
              tileColor: Colors.blue[200],
              title: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  itemsList[index],
                  style: TextStyle(fontSize: 20),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => nextScreen(
                        title: itemsList[index],
                      ),
                    ));
              },
            ),
          );
        },
      ),
    );
  }
}
