import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class Emailverify extends StatefulWidget {  @override
  State<Emailverify> createState() => _EmailverifyState();
}

class _EmailverifyState extends State<Emailverify> {

  @override
  void initState() {
    super.initState();
    /*setState(() {
      getUser();
    });*/


  }
  @override
  Widget build(BuildContext context) {

  return Scaffold(

    appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ),
      leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 30,)),

    ),

    body: Column(children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start:15.0,end: 15,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email Verification',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'We sent link to your email verify to continue ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
        Container(
          width: 70,
          height: 70,
          child: CircularProgressIndicator(
            color: Colors.orange,
          ),
        ),
      ]),
    );

  }


 /*getUser () async
  {
    var user=FirebaseAuth.instance.currentUser;

      if (user!.emailVerified == true)
      {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => packages(),));

      }

    print(user!.emailVerified);


  }*/


}
