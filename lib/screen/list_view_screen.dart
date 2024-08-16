import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
           ListView.builder(
             shrinkWrap: true,
             itemCount: 20,
             itemBuilder: (BuildContext context,int index){
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 100,
                   width: 500,
                   color: Colors.green.shade100,
                 ),
               );
             },
           )
          ],
        ),
      ),
    );
  }
}
