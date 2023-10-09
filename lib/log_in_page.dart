import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:log_in_page/signup_page.dart';

class LogPage extends StatefulWidget {
  const LogPage({super.key});

  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/img.png"),
                fit: BoxFit.cover,
              )
            ),

          ),
          Container(
            margin: EdgeInsets.only(right: 20,left: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('HELLO',style: TextStyle(fontSize: 70,fontWeight: FontWeight.bold),),

                Text('sign into your account',style: TextStyle(fontSize: 20,color: Colors.grey[500]),),
                SizedBox(height: 40,),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email,color: Colors.cyan,),
                      hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),

                    )
                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.key,color: Colors.purpleAccent,),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),

                      )
                  ),
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Text('forggot your password',style: TextStyle(fontSize: 15,color: Colors.grey[500]),),
                  ],
                )





              ],
            ),
          ),
          SizedBox(
            height: 20,),
          Container(
            width: 200,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage("assets/images/img.png"),
                  fit: BoxFit.cover,
                )
            ),
            child: Center(
                child: Text('Sign In',style: TextStyle(
                    fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),)),

          ),
          SizedBox(
            height: 25,
            width: 200,
          ),
         RichText(text: TextSpan(
           text:'Don\'t have an account?',style: TextStyle(color: Colors.grey[500],fontSize: 20),
           children: [
             TextSpan(
             text:' Create',style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),
               recognizer: TapGestureRecognizer()..onTap=()=>
               Get.to(()=>SignUpPage()),

             )

           ]
         )),
            ],
          ),





    );
  }
}
