import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      'img_4.png',
      'img_5.png',
      'img_1.png',

    ];

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
            Container(
              margin: EdgeInsets.only(right: 20,left: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [



                  SizedBox(height: 40,),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email,color: Colors.cyan,),
                        hintText: 'Your Email id',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),

                        )
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.key,color: Colors.purpleAccent,),
                      hintText: 'Your Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),

                        )
                    ),
                  ),
                 /* Row(
                    children: [
                      Expanded(child: Container()),
                      Text('forggot your password',style: TextStyle(fontSize: 20,color: Colors.grey[500]),),
                    ],
                  )*/
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
                  )
              ),
              child: Center(
                  child: Text('Sign Up',style: TextStyle(
                      fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),)),

            ),
            SizedBox(height: 40),
            RichText(text: TextSpan(
              recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
              text: 'have an account',style: TextStyle(fontSize: 20,color: Colors.grey[500],fontWeight: FontWeight.w500),
            )),
            SizedBox(
              height: 25,
              width: 200,
            ),
            RichText(text: TextSpan(
                text:'SignUp the using one of the following method',style: TextStyle(color: Colors.grey[500],fontSize: 16),
            ),
            ),
            Wrap(
              children: List<Widget>.generate(3, (index) {
                return Padding(
                  
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[500],
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/'+images[index]),

                    ),
                  ),
                );

              }
            )
            )],
        )
       
    );
  }
}
