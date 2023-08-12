import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ourprojectiti/screens/translations.dart';
import '../login_screen.dart';
import '../model/DataModel.dart';

import 'Home_Screen.dart';
import 'Places_Screen.dart';
import 'home_api.dart';

class Home_page extends StatefulWidget {
  @override
  String? imagePath;
  String? name;
  Home_page? selectedCity;
  int selectedIndex = -1;

  Home_page({this.imagePath, this.name});

  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        title: Text('Available cities',
          style: TextStyle(fontFamily:'flu',color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
        titleSpacing: 20,
        actions: [
          IconButton(
              onPressed:()async{
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login(),));
              },
              icon: Icon(Icons.login_outlined,color: Colors.grey[600],size: 35,)),

        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
        child: ListView.separated(
          itemCount: homeDATA.length,
          separatorBuilder: (context, index) => SizedBox(
            height: 20,
          ),
          itemBuilder: (BuildContext context, int index) {
            return buildCityItem(context, index);
          },
        ),
      ),
    );
  }


  GestureDetector buildCityItem(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Places_Page(
              placesData: homeDATA[index].place,
              placeName: homeDATA[index].name!,
                )));
      },
      child: Stack(
        children: [
          Stack(
            children: [
              Container(
                width: 320.0,
                height: 320.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(homeDATA[index].image!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

            ],
          ),
          Positioned(
            left: 110,
            top: 20,
            child: Center(
              child: Text(
                homeDATA[index].name!,
                style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
