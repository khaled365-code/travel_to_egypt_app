import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ourprojectiti/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';




class Resetpass extends StatelessWidget {

  var emailText=TextEditingController();

  @override
  Widget build(BuildContext context) {

    var resetstateform=GlobalKey<FormState>();

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
    body:Form(
      key: resetstateform,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          margin: EdgeInsetsDirectional.only(start: 5,end: 5,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Find your account',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                SizedBox(height: 10,),
                Text('Enter email and we will send you password reset link',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                SizedBox(height: 30,),
                TextFormField(
                  controller: emailText,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value)
                  {
                    if(value!.isEmpty)
                    {
                      return 'You must enter a correct email address';
                    }
                    if(value!.length<=10)
                    {
                      return 'email can\'t be less than 11 letters';
                    }
                    if(value!.length>=30)
                    {
                      return 'email can\'t be larger than 29 letters '  ;
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.email,
                      color: Colors.black.withOpacity(.5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    labelText: 'Email Address',
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: const Color(0xff8e3200)),
                    color: const Color(0xff8e3200),
                  ),
                  child: MaterialButton
                    (
                    onPressed: () async{
                      if (resetstateform.currentState!.validate()) {
                        try {
                          await FirebaseAuth.instance.sendPasswordResetEmail(
                              email: emailText.text.trim());
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                  content: Text(
                                      'Password reset link sent! check your email')));
                        } on FirebaseAuthException catch (e) {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                  content: Text(e.message.toString())));
                        }
                      }
                    }
                    ,
                    child: const Text('Reset password',style: TextStyle(color: Colors.white,fontSize: 18)),
                  ),
                ),






              ],




          ),
        ),
      ),
    ),







  );



  }
}
