import 'package:flutter/material.dart';

class ColScreen extends StatefulWidget {
  const ColScreen({super.key});

  @override
  State<ColScreen> createState() => _ColScreenState();
}

class _ColScreenState extends State<ColScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text("Task",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
              height: 50,
              width: 700,
              color: Colors.green,
            ),
            SizedBox(height: 30,),
            Container(
              height: 50,
              width: 700,
              color: Colors.green,
            ),
            SizedBox(height: 30,),
            Container(
              height: 50,
              width: 700,
              color: Colors.green,
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 50,
                  color: Colors.green,
                ),
                SizedBox(width: 30,),

                Container(
                  height: 200,
                  width: 50,
                  color: Colors.green,
                ),
                SizedBox(width: 30,),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.green,
                        ),
                        SizedBox(width: 30,),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.green,
                        ),
                        SizedBox(width: 30,),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                      width: 300,
                      color: Colors.green,
                    ),


                  ],
                )

              ],
            )

          ],
        ),
      ),
    );
  }
}
