import 'package:ourprojectiti/screens/search_api.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../model/weather_model.dart';
import '../model/weather_provider.dart';

class home5 extends StatefulWidget {
  @override
  State<home5> createState() => _homeState();
}

class _homeState extends State<home5> {


  void updateUi()
  {
    setState(() {

    });
  }
  WeatherModel ? weatherData;
  @override
  Widget build(BuildContext context) {
    weatherData=Provider.of<WeatherProvider>(context).weatherData;
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {

            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back,size: 40,color: Colors.black,),



        ),
        title:
        const Text(
            'Weather',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'flu'),
        ),
        titleSpacing: 80,
        actions: [
          IconButton(onPressed:(){
            Navigator.push(context,  MaterialPageRoute(builder: (context)
            {
              return search_page(
                updateUi:updateUi,
              );

            }));
          },
            icon: Container(
              margin: const EdgeInsetsDirectional.only(end: 30),
              child: const Icon(
                  Icons.search,color: Colors.black,size: 40,
              ),
            ),
          ),

        ],

      ) ,
      body:Provider.of<WeatherProvider>(context).weatherData == null ?   const Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            Text(
              'there is no weather  😔 start ',
              style:TextStyle(
                fontSize: 25,
              ) ,
            ),
            SizedBox(height: 8,),
            Text(
              'searching now 🔍 ',
              style:TextStyle(
                fontSize: 25,
              ) ,
            ),



          ],

        ),
      )

          : Container(
        decoration:BoxDecoration(
            color:weatherData!.getThemeColor() ,
            gradient:LinearGradient(
              colors:[
                weatherData!.getThemeColor(),
                weatherData!.getThemeColor()[300]!,
                weatherData!.getThemeColor()[100]!,

              ],
              begin: Alignment.topCenter,
              end:  Alignment.bottomCenter,
            )
        ) ,



        child: Column(


          mainAxisAlignment:MainAxisAlignment.center,

          children: [
            const Spacer(
              flex: 3,
            ),
            Text(
              Provider.of <WeatherProvider >(context).cityName! ,
              style:const TextStyle(fontSize: 35,fontWeight: FontWeight.bold) ,
            ),

            Text(

              'Updated at : ${weatherData!.date.hour.toString()}:${weatherData!.date.minute.toString()}',
              style:const TextStyle(
                fontSize: 18,
              ) ,
            ),
            const SizedBox(
              height: 20,
            ),

            Row(
              crossAxisAlignment:CrossAxisAlignment.center ,
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [

                Image(
                  image: AssetImage(weatherData !.getImage() ),
                  width: 90,
                ),

                const SizedBox(
                  width: 40,
                ),
                Text(
                  weatherData!.temp.toInt().toString(),
                  style:const TextStyle(
                    fontSize: 40,
                  ) ,
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.end ,
                  children: [
                    Text(
                      ' maxTemp: ${ weatherData!.maxTemp.toInt()}',
                      style:const TextStyle(
                        fontSize:16,
                      ) ,
                    ),
                    Text(
                      ' minTemp: ${ weatherData!.minTemp.toInt()}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),

                  ],
                ),

              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              weatherData!.weatherStateName ,
              style:const TextStyle(fontSize: 35,fontWeight: FontWeight.bold) ,
            ),
            const Spacer(
              flex: 5,
            ),




          ],


        ),



      ),

    );
  }
}
