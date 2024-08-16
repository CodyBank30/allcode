import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:  EdgeInsets.all(Get.width*0.1),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  width: Get.width,
                  height: Get.height*0.4,
                  // height: Get.height*0.1,
                ),
                // SizedBox(
                //     height: 300,
                //     child: Image.asset("assets/images/4607360_28036.jpg")),
                SizedBox(height: 30,),
                Text("Login Here",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Username",style: TextStyle(fontSize: 12),),
                      TextFormField(
                        controller: username,
                        decoration: InputDecoration(
                          hintText: "Username",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                          )
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text("Password",style: TextStyle(fontSize: 12),),
                      TextFormField(
                        controller: password,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)
                            )
                        ),
                      ),
                      SizedBox(height: 30,),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: Get.height*0.05,
                          width: Get.width,
                          child: ElevatedButton(
                            style:ElevatedButton.styleFrom(
                              backgroundColor: Colors.green
                            ),
                              onPressed: (){
                              if(username.text.isEmpty){
                                toast  ("Please Enter Your Username");
                              }else if(password.text.isEmpty){
                                toast("Please Enter Your Password");
                              }else{
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>HomeScreen() ));
                              }
                              },
                              child:Text("login")
                          ),
                        ),
                      )

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  void toast(String msg){
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
