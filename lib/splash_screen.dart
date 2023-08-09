import 'package:flutter/material.dart';

import 'login_screen.dart';



class Splash extends StatefulWidget {  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {




  @override
  void initState() {
    super.initState();
    splashfun();
  }

  @override
  Widget build(BuildContext context) {

     return Scaffold(
       backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),

       body: Center(
         child: Container(
           margin: const EdgeInsetsDirectional.only(top: 70),

           child: Column(

               children:
               [
                  CircleAvatar(
                    radius: 150,
                    child:Image.asset('assets/images/c.png',
                    ),
                  ),
                 const SizedBox(height: 30,),
               const Text(
                     ' Egypt Travel',
                     style: TextStyle(
                         fontSize: 30,
                         fontWeight: FontWeight.bold,
                         color: Colors.black,
                     ),
                   ),
                 const SizedBox(height: 80,),
                 const CircularProgressIndicator(
                   color: Colors.orange,
                 ),


               ],


             ),
         ),
       ),



       );







  }

  splashfun() async
  {

    await Future.delayed(const Duration(seconds: 10),(){});
   Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));

  }



}
