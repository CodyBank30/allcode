import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.all(Get.width*0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: Get.height*0.5,
                width: Get.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pinkAccent),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.pinkAccent.shade100
                ),
                child: Image.asset("assets/images/4607360_28036.jpg",
                height: Get.height*0.3,
                ),
              ),
              SizedBox(height: Get.height*0.02,),
              Text("Discover your \nDream job Here",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.w900,
                fontSize: 25,
              ),
              ),
              SizedBox(height: Get.height*0.05,),
              Container(
                // color: Colors.black,black
                width: Get.width*0.7,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.w100,
                  fontSize: 15
                ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: Get.height*0.05,),
              Container(
                alignment: Alignment.center,
                width: Get.width*0.1,
                height: Get.height*0.05,
                decoration: BoxDecoration(
                  color: Colors.pink.shade50,
                  border: Border.all(color: Colors.pink.shade100)
                ),
                child: Text("Login",style: TextStyle(color: Colors.pink),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
