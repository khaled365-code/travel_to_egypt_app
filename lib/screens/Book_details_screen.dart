import 'package:flutter/material.dart';


class Book_details_Page extends StatefulWidget {
  String ? image;
  String ? text;
  Book_details_Page({this.image,this.text});
  @override
  State<Book_details_Page> createState() => _Book_details_PageState();
}

class _Book_details_PageState extends State<Book_details_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(

            children: [
              //first row
              Row(
                children: [
                  const SizedBox(width: 10,),
                  Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffDBDBDB)
                      ),
                      child: IconButton(onPressed:()
                      {
                        Navigator.pop(context);
                      } ,icon:const Icon(Icons.arrow_back_ios_new_sharp),)),
                  const SizedBox(width: 30,),
                  const Text('confirm and pay',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'flu'),),

                ],

              ),
              const SizedBox(height: 20,),
              //second row
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 25,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0), // Adjust the value to control the amount of rounding
                    child: Image.asset(
                      widget.image!,
                      width: 120, // Adjust the width to fit your layout
                      height: 100, // Adjust the height to fit your layout
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.text!,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          const Icon(Icons.location_on_outlined,color: Color(0xff00c9a9),),
                          const Text('Cairo, Egypt')
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          const Icon(Icons.star,color: Colors.amber,),
                          const Text('4.4')
                        ],
                      )
                    ],
                  ),

                ],
              ),
              const SizedBox(height: 20,),
              //third row trip info
              Row(
                children: [
                  const SizedBox(width: 25,),
                  const Text('Your Trip',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  const Spacer(flex: 6,),
                  const Text('Change',style: TextStyle(fontSize: 14),),
                  const Spacer(flex: 1,)
                ],
              ),
              const SizedBox(height: 20,),
              //package row
              Row(
                children: [
                  const SizedBox(width: 25,),
                  Container(
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.orange,width: 1),
                          borderRadius: BorderRadius.circular(15)

                      ),
                      child: const ImageIcon(AssetImage('assets/images/package.png'),size: 30,color: Colors.orange)
                  ),
                  const SizedBox(width: 10,),
                  const Text('Package \nHalawa Travel')
                ],
              ),
              const SizedBox(height: 15,),
              //Transport row
              Row(
                children: [
                  const SizedBox(width: 25,),
                  Container(
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.orange,width: 1),
                          borderRadius: BorderRadius.circular(15)

                      ),
                      child: const ImageIcon(AssetImage('assets/images/bus.png'),size: 30,color: Colors.orange,)
                  ),
                  const SizedBox(width: 10,),
                  const Text('Transport\nJolly Scania AA Bus')
                ],
              ),
              const SizedBox(height: 15,),
              //Date row
              Row(
                children: [
                  const SizedBox(width: 25,),
                  Container(
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.orange,width: 1),
                          borderRadius: BorderRadius.circular(15)

                      ),
                      child: const Icon(Icons.calendar_today,color: Colors.orange,size: 30,)
                  ),
                  const SizedBox(width: 10,),
                  const Text('Date\n22 Oct-25 Oct')
                ],
              ),
              const SizedBox(height: 20),
              //Price details row
              Row(
                children: [
                  const SizedBox(width:25),
                  const Text('Price Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),


                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  const Text('Regular Price'),
                  const Spacer(),
                  const Text('\$244'),
                  const SizedBox(width: 25,)
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  const Text('Transports'),
                  const Spacer(),
                  const Text('\$55'),
                  const SizedBox(width: 25,)
                ],
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  const Text('Grand Total',style: TextStyle(fontSize: 20),),
                  const Spacer(),
                  const Text('\339',style: TextStyle(fontSize: 20)),
                  const SizedBox(width: 25,)
                ],
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Success booking"),
                        content: const Text("Your booking has been successful!"),
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
                child: const Text(
                  'Book',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff8e3200),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                ),
              ),




              ],
          ),
        ),

      ),
    );
  }
}



