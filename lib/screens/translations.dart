import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:ourprojectiti/screens/search_api.dart';
import 'package:translator/translator.dart';

import 'Home_Screen.dart';
import 'home_api.dart';
class translations extends StatefulWidget {

  @override
  State<translations> createState() => _translationsState();
}

class _translationsState extends State<translations> {
  String ?translated ='Translation';
  bool isArabic=true;
  bool x= true;
  String?name;
  String?image1='assets/images/egypt.png';
  String?image2='assets/images/English-icon.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,

        ),
        backgroundColor:Colors.white ,
        leading:Icon
          (
          Icons.translate,color: Colors.grey[600],size: 40,
        ) ,
        title:Text(
          'Translation',
          style: TextStyle(color: Colors.black,fontFamily: 'flu',fontSize: 25),

        ) ,
        centerTitle: true,

      ) ,
      body:Container(

        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [

                  CircleAvatar(
                    radius: 25,
                    child: isArabic==true?Image.asset(image1!):Image.asset(image2!),

                  ),
                  SizedBox(width: 12),
                  Text(
                    isArabic==true? name='Arabic':name='English',
                    style:TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                    ) ,
                  ),

                 Switch(

                    value: isArabic,
                    onChanged: ( value) {
                      setState(() {
                        isArabic=value;
                      });
                    },
                  ),

                  Text(
                    isArabic==true? name='English':name='Arabic',

                    style:TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                    ) ,
                  ),
                  SizedBox(width: 12),

                  CircleAvatar(
                      radius: 25,
                      child:
                      isArabic==false?
                      Image.asset(image1!):Image.asset(image2!)
                  ),


                ],
              ),
            ),
            SizedBox(height: 50),

            Container(

              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                  Text(
                    'English (US)',
                  ),
                  TextField(
                    style:TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ) ,
                    decoration: InputDecoration(
                      hintText: "Enter text",
                      helperMaxLines: 10,

                    ),


                    onChanged: (text) async {
                      if (text.isEmpty) {
                        // If entered text is empty, set the translated text to an empty string
                        setState(() {
                          translated='Translation';
                        });
                      }
                      else

                      {
                        final  from = isArabic? 'ar':'en'; //English
                        final  to = isArabic? 'en':'ar'; //English
                        final translation = await text.translate(
                            from: from , to:to);
                        setState(() {
                          translated=translation.text;



                        });
                      }
                    },




                  ),
                ],
              ),
            ),

            SizedBox(
              height: 50,
            ),

            TextField(

              decoration:InputDecoration(
                hintText:translated,
                hintMaxLines: 10,


              ) ,







              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,

              ),

            ),


          ],
        ),
      ) ,




      bottomNavigationBar:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          margin: EdgeInsetsDirectional.only(bottom: 10),
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:Color(0xff8e3200),

          ),
          child:Row (
            children:
            [
              SizedBox(width: 40,),
              Column(
                  children:
                  [
                    IconButton(

                      icon:Icon(Icons.home,color: Colors.white,),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home_page()));
                      },
                    ),
                    SizedBox(width: 5,),
                    Text('Home',style: TextStyle(color: Colors.white),),
                  ]
              ),
              SizedBox(width: 70,),
              Column(
                  children:
                  [
                    IconButton(

                      icon:Icon(Icons.cloud,color: Colors.white,),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>home5()));
                      },
                    ),
                    SizedBox(width: 5,),
                    Text('Weather',style: TextStyle(color: Colors.white),),
                  ]
              ),
              SizedBox(width: 70,),
              Column(
                  children:
                  [
                    IconButton(
                      icon:Icon  (Icons.translate,color: Colors.white,),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>translations()));
                      },

                    ),
                    SizedBox(width: 5,),
                    Text('Translator',style: TextStyle(color: Colors.white),),
                  ]
              ),
            ],
          ),
        ),
      ),



    );
  }
}
