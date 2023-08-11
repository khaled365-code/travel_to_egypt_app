import 'package:flutter/material.dart';
import 'package:ourprojectiti/screens/place_details_screen.dart';
import '../model/DataModel.dart';

class Places_Page extends StatefulWidget {
List<placeModel> placesData;
String placeName;
Places_Page({required this.placesData,required this.placeName});

  @override
  State<Places_Page> createState() => _Places_PageState();
}

class _Places_PageState extends State<Places_Page> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        toolbarHeight: 80,
        leading: Container(
          margin: EdgeInsetsDirectional.only(start: 10),
          child: IconButton(onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 40,),),
        ),
        centerTitle:true,
        title:  Text(widget.placeName,style: TextStyle(color: Colors.black,fontSize:30,fontWeight: FontWeight.bold,fontFamily: 'flu' ),),
        elevation: 0.0,
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
        child: ListView.builder(
          itemCount: widget.placesData.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {

              },

              child: Stack(
                children: [

                  Container(

                    child: Column(
                      children: [

                        GestureDetector(
                          onTap: ()
                          {



                          Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>
                          Place_Detials_Page(
                          image: widget.placesData[index].image,
                          text: widget.placesData[index].name,
                            description: widget.placesData[index].Description,
                          )));

                          },


                          child: Container(
                            width: 320.0,
                            height: 320.0,
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(20.0),

                              image: DecorationImage(

                                  image: AssetImage(widget.placesData[index].image!),
                                  fit: BoxFit.cover,




                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 25.0),


                      ],
                    ),
                  ),
                  Positioned(
                   top: 30,
                    left: 80,
                    child: Center(
                      child: Text(

                   widget.placesData[index].name!,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),

                ],
              ),


            );
          },

        ),

      ),

    );
  }
}


// onboarding= package= cityModel
// packages = homePage=homeModel
// homePage= city
