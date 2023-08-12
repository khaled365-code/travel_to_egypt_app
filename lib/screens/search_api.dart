
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/WeatherService.dart';
import '../model/weather_model.dart';
import '../model/weather_provider.dart';

class search_page extends StatelessWidget {
  String ? cityName;
  search_page ({this.updateUi});
  VoidCallback ? updateUi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        backgroundColor:Colors.white ,
        leading: IconButton(
          color: Colors.white,
          onPressed: (){
            Navigator.pop(context);

          },
          icon:Icon(
            Icons.arrow_back,
            size: 40,
            color:  Colors.black,
          ) ,
        ),
        title:Text(
          'Search for a City ',
          style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'flu'),
        ) ,
      ) ,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 20,end: 20,top: 100),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color:Color(0xff8e3200)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                      onChanged: (data)
                      {
                        cityName=data;
                      },

                      onSubmitted: (data) async{
                        cityName=data;
                        WeatherService service = WeatherService();
                        WeatherModel ? weather= await service.getWeather(cityName: cityName!);

                        Provider.of <WeatherProvider> (context,listen: false).weatherData=weather;
                        Provider.of <WeatherProvider> (context,listen: false).cityName=cityName;

                        Navigator.pop(context);




                      },
                      decoration:InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                        hintText:'Enter a city' ,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),

                        ),
                        suffixIcon:GestureDetector(
                          onTap: () async
                          {

                            WeatherService service = WeatherService();
                            WeatherModel ? weather= await service.getWeather(cityName: cityName!);

                            Provider.of <WeatherProvider> (context,listen: false).weatherData=weather;
                            Provider.of <WeatherProvider> (context,listen: false).cityName=cityName;

                            Navigator.pop(context);

                          },
                          child: Icon(
                            Icons.search,color: Colors.black,size: 40,
                          ) ,
                        ),
                      )
                  ),
                ),
                SizedBox(height:80,),
                Container(
                  margin: EdgeInsetsDirectional.symmetric(horizontal:5),
                  child: Image(image:NetworkImage('https://www.nicepng.com/png/detail/77-779902_information-f-a-q-s-and-more-searching.png'),
                    width: 350,
                    height: 350,
                  ),
                )
              ],
            ) ,
          ),
      ),

    );


  }
}
