import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        actions: [
          Icon(Icons.more_vert,color: Colors.black,),
        ],
      ),
      body: Center(
        child: Padding(
          padding:  EdgeInsets.all(Get.width*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: Get.height*0.1,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      shape: BoxShape.circle
                    ),
                    child: Image.asset("assets/images/4607360_28036.jpg")
                  ),
                  SizedBox(width: Get.width*0.08,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Joined",style: TextStyle(
                          color: Colors.grey,
                        fontSize: 20
                      ),),
                      Text("1 year ago",style: TextStyle(
                          fontSize: 30,
                        fontWeight: FontWeight.w700
                      ),),
                    ],
                  )

                ],
              ),
              SizedBox(height: Get.height*0.05,),
              const Text("David",style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                fontWeight: FontWeight.w900
              ),),
              const Text("Robinson",style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
              ),),
              SizedBox(height: Get.height*0.06,),

              /// Profile
              const Text("Profile",style: TextStyle(  
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
              ),),
              CustomContainer(
                firstIcon: Icon(
                  Icons.circle_outlined,
                  color: Colors.orange,
                ),
                text: "Manage User",
                secondIcon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: Get.height*0.05,),

              /// settings
              const Text("Setting",style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
              ),),
              CustomContainer(
                firstIcon: Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.blue,
                ),
                text: "Notification",
                secondIcon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
              ),
              CustomContainer(
                firstIcon: Icon(
                  Icons.dark_mode_outlined,
                  color: Colors.blue,
                ),
                text: "Dark Mode",
                secondIcon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
class CustomContainer extends StatelessWidget {
  CustomContainer(
      {
        required this.firstIcon,
        required this.secondIcon,
        required this.text,
      });
  final Widget firstIcon;
  final Widget secondIcon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
            height: Get.height*0.1,
            width: Get.width*0.13,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red.shade100
            ),
            child: firstIcon
        ),
        SizedBox(width: Get.width*0.05,),
        Text(text,style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
        Spacer(),
        secondIcon
      ],
    );
  }
}

