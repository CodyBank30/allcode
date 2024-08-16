import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selecteValue ;

  // Define the list of PopupMenuItem
  final List<PopupMenuItem<String>> menuItems = [
    PopupMenuItem<String>(
      value: 'item1',
      child: Text('Abc'),
    ),
    PopupMenuItem<String>(
      value: 'item2',
      child: Text('Item 2'),
    ),
    PopupMenuItem<String>(
      value: 'item3',
      child: Text('Item 3'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade100,
        title: Text('Popup Menu Example'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              setState(() {
                selecteValue = value;
                print('Selected item: $value');
              });
            },
            itemBuilder: (BuildContext context) {
              return menuItems;
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Press the menu icon in the AppBar',
              style: TextStyle(fontSize: 18.0),
            ),
             Text(
              'Selected Value ${selecteValue??""}',
              style: TextStyle(fontSize: 18.0),
            ),

          ],
        )
      ),
    );
  }
}