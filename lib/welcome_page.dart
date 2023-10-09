import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
                    image: AssetImage("assets/images/img_2.png"),
                    fit: BoxFit.cover,
                  )
              ),
              child: Column(
                children: [
                  SizedBox(
                      height: h*0.12),
                  CircleAvatar(radius: 60,
                    backgroundImage: AssetImage('assets/images/img_3.png'),
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
                    image: AssetImage("assets/images/img_2.png"),
                    fit: BoxFit.cover,
                  ),
              ),
              child: Center(
                  child: Text('Sign Out',style: TextStyle(
                      fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),)),

            ),
            SizedBox(height: 100,),
            Text(
              'welcome',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.black54),),
            Text('a@gamil.com',style: TextStyle(fontSize: 18,color: Colors.grey[500]),),
            ]
        )
    );
  }
}
