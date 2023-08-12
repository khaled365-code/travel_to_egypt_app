import 'package:flutter/material.dart';
import 'package:ourprojectiti/login_screen.dart';

class onboarding1 extends StatelessWidget {
String ?image;
String ? text;
onboarding1({this.image,this.text});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          children: [
            Image.asset(image!),
            SizedBox(
              height: 35,
            ),
            Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                letterSpacing: -0.42,
              ),

            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Formulate your strategy to receive \nwonderful gift packs',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFB4B4B4),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.27,
              ),
            )  ,
          SizedBox(
            height: 50,
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Color(0XFFde7542),
            child: IconButton(onPressed: ()
            {
              if(image=='assets/images/Traveling_Monochromatic 1.png')
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>onboarding1
                (
                image:'assets/images/Beach_Monochromatic 1.png' ,
                text:'Customize your High-end travel'
              )));
              if(image=='assets/images/Beach_Monochromatic 1.png')
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()
                ));
            },
                icon: Icon(Icons.arrow_forward,
                  color: Colors.white,
                  size: 30,

                ),
            ),
          ),
          ],
        ),
      )


    );
  }
}
