import 'package:flutter/material.dart';

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
            child: Column(
              children: [
                Text('HELLO',style: TextStyle(fontSize: 70,fontWeight: FontWeight.bold),),
                SizedBox(
                  width: 10,
                )
                Text('sign into your account',style: TextStyle(fontSize: 20,color: Colors.grey[500]),),

              ],
            ),
          )
        ],

      ),

    );
  }
}
