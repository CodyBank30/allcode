import 'package:flutter/material.dart';


import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          "Home Screen",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: 300,
              color: Colors.green,
            ),
            SizedBox(
              height: 30,
            ),
            /// Card Widget
            SizedBox(
              height: 100,
              width: 300,
              child: Card(
                color: Colors.green,
                elevation: 20,
                shadowColor: Colors.red,
              ),
            ),

            SizedBox(
              height: 30,
            ),
            /// TextButton
            TextButton(
                onPressed:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>LoginScreen() ));
                } ,
                child:Text("TextButton",
                  style: TextStyle(
                  color: Colors.black,
                    fontWeight: FontWeight.bold
                ),)
            )

          ],
        ),
      ),
    );
  }
}
