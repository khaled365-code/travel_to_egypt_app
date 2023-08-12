import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ourprojectiti/login_screen.dart';
import 'package:ourprojectiti/signup_cubit/signup_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quickalert/quickalert.dart';

import 'email_verifivcation_screen.dart';




class Createaccount extends StatelessWidget {


  Future<UserCredential> signInWithGoogle() async{
    final GoogleSignInAccount? gUser= await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth=await gUser!.authentication;

    final credential2 = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential2);

  }





  @override
  Widget build(BuildContext context) {

    var nametextfield=TextEditingController();
    var passwordTextfield=TextEditingController();
    var emailTextfield=TextEditingController();

    final cubit=context.read<SignupCubit>();

    var createaccountkey=GlobalKey<FormState>();

    UserCredential? credential;
    User? user;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,

        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: createaccountkey,
          child: Container(
                margin: const EdgeInsetsDirectional.only(top: 0),
                child: SafeArea(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,

                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Container(
                          margin: const EdgeInsetsDirectional.only(start: 20,top: 5),
                          child: Row(

                            children:
                            [
                              Image.asset('assets/images/pyricon (1).jpg',
                                width: 80,
                                height: 50,
                                fit: BoxFit.contain,),
                              Container(
                                  margin: const EdgeInsetsDirectional.only(start: 3,top: 20),
                                  child: const Text('Egypt Travel',style: TextStyle(fontFamily:'flu',color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold))),


                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsetsDirectional.only(start: 25,top: 40),
                          child: const Text('Create an',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          margin: const EdgeInsetsDirectional.only(start: 25),
                          child: const Text('Account',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold)),

                        ),


                        const SizedBox(height: 35),

                        Padding(padding:const EdgeInsetsDirectional.only(start: 40,end: 40),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [

                              Container(
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  controller: nametextfield,
                                  validator: (value)
                                  {
                                    if(value!.isEmpty)
                                      {
                                        return 'You must enter a name';
                                      }
                                    if(value.length>=15)
                                      {
                                        return 'username can\'t be more than 14 letters';
                                      }
                                    if(value.length<=3)
                                    {
                                      return 'username can\'t be less than 4 letters';
                                    }

                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25)),
                                    labelText: 'Name',



                                  ),
                                ),
                              ),

                              const SizedBox(height: 15),
                              Container(

                                child: TextFormField(
                                  controller: emailTextfield,
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
                              ),
                              const SizedBox(height: 15),
                              BlocBuilder<SignupCubit, SignupState>(
  builder: (context, state) {
    return Container(

                                child: TextFormField(
                                  controller: passwordTextfield,
                                  obscureText: cubit.obsecureFun(),
                                  keyboardType: TextInputType.visiblePassword,
                                  validator: (value)
                                  {
                                    if(value!.isEmpty)
                                    {
                                      return 'You must enter a password';
                                    }
                                    if(value!.length<6)
                                    {
                                      return 'password can\'t be less than 6 letters';
                                    }
                                    if(value!.length>20)
                                    {
                                      return 'password can\'t be larger than 20 letters '  ;
                                    }
                                    return null;

                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25)),
                                    labelText: 'Password',
                                      suffixIcon: InkWell(
                                            onTap: cubit.changeEye,
                                            child: cubit.seeText
                                                ? Icon(Icons.remove_red_eye,
                                                color:
                                                Colors.black.withOpacity(.5))
                                                : Icon(Icons.visibility_off ,color:
                                          Colors.black.withOpacity(.5))),
                                ),
                                )
                              );
  },
),
                              const SizedBox(height: 15),
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
                                  onPressed: () async
                                  {

                                    if(createaccountkey.currentState!.validate())
                                      {
                                        try {
                                          credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                            email: emailTextfield.text!,
                                            password: passwordTextfield.text!,
                                          );
                                          user=FirebaseAuth.instance.currentUser;
                                          await user!.sendEmailVerification();
                                          print(credential);

                                        } on FirebaseAuthException catch (e) {
                                          if (e.code == 'weak-password') {

                                            QuickAlert.show(
                                                context: context,
                                                type: QuickAlertType.error,
                                                title: 'Error',
                                                text: 'The password provided is too weak',


                                            );

                                          } else if (e.code == 'email-already-in-use') {
                                            QuickAlert.show(
                                                context: context,
                                                type: QuickAlertType.error,
                                                title: 'Error',
                                                text: 'The account already exists for that email',

                                            );

                                          }
                                        } catch (e) {
                                          print(e);
                                        }
                                        if(credential!=null)
                                          {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));

                                          }

                                          }
                                      },
                                      
                                  child: const Text('sign up',style: TextStyle(color: Colors.white,fontSize: 18)),
                                ),
                              ),
                              const SizedBox(height: 20),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Container(
                                    width: 120,
                                    child: const Divider(
                                      height: 20,
                                      color: Colors.black,
                                      thickness: 2,

                                    ),
                                  ),
                                  const Text('   Or   ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                                  Container(
                                    width: 120,
                                    child: const Divider(
                                      height: 20,
                                      color: Colors.black,
                                      thickness: 2,

                                    ),
                                  )

                                ],
                              ),
                              Container(
                                margin: const EdgeInsetsDirectional.only(start: 30,top: 5),
                                child: Row(
                                  mainAxisAlignment:  MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap:()async{

                                        credential=await signInWithGoogle();
                                        print(credential);

                                      },
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.white,
                                        child: Image.asset('assets/images/g.jpg',
                                          width: 100,
                                          height: 100,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 30,),
                                    InkWell(
                                      onTap:(){},
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        child: Image.asset('assets/images/insta1.jpg',
                                          width: 100,
                                          height: 100,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 15,),
                                    InkWell(
                                      onTap:(){},
                                      child: CircleAvatar(
                                        radius: 35,
                                        backgroundColor: Colors.white,
                                        child: Image.asset('assets/images/facebook.png',
                                          width: 100,
                                          height: 100,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('have account ? ',style: TextStyle(color: Colors.black.withOpacity(.7),fontSize: 15),),
                                  InkWell(
                                      onTap: ()
                                      {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                                      },
                                      child: Text('log in',style: TextStyle(color: Colors.black.withOpacity(.8),fontSize: 15,fontWeight: FontWeight.bold),)),

                                ],
                              )


                            ],
                          ),
                        ),




                      ],





                    ),
                  ),
                ),
              ),
        ),
      ),


    );

  }
}
