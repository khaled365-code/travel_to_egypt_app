import 'package:flutter/material.dart';
import 'package:ourprojectiti/screens/translations.dart';

import 'Home_Screen.dart';
import 'home_api.dart';

class Payment extends StatelessWidget {
  var NameController = TextEditingController();
  var NumberController = TextEditingController();
  var DateController = TextEditingController();
  var postalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home_page()));
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.cloud),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => home5()));
              },
            ),
            label: 'Weather',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.translate),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => translations()));
              },
            ),
            label: 'Search',
          ),

        ],
      ),
      appBar: AppBar(
        backgroundColor: Color(0XFFde7542),
        title: Text(
          'Payment',
          style: TextStyle(
            fontSize: 24
          ),

        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Ellipse 2.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: OvalBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFF0093FF)),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Add Payment',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color:  Color(0XFFde7542),
                  fontSize: 23,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                Image.asset('assets/images/MasterCard_Logo 1.png'),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset('assets/images/Visa_Logo 1.png'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  TextFormField(

                    controller: NameController,
                    keyboardType: TextInputType.name,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Name on card',
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: NumberController,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Card Number',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: DateController,
                    keyboardType: TextInputType.datetime,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Expiry Date',
                      prefixIcon: Icon(
                        Icons.calendar_today,
                      ),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  TextFormField(
                    controller: postalController,
                    keyboardType: TextInputType.number,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Postal code',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)


                      ),
                    ),
                  ),

                  SizedBox(
                    height: 40.0,
                  ),
                  GestureDetector(
                    onTap: ()
                    {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Success booking"),
                            content: const Text("Your Payment Method Added successfully"),
                            actions: [
                              TextButton(
                                child: const Text("OK"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );

                    },
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color:  Color(0XFFde7542),


                      ),
                      child: Center(
                        child: Text(
                          'Add',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}