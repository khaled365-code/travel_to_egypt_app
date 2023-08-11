import 'package:flutter/material.dart';

import 'Book_details_screen.dart';
import 'home_api.dart';

class Place_Detials_Page extends StatelessWidget {
  String? image;
  String? text;
  String?description;
  Place_Detials_Page({this.text, this.image,this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildStack(context),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      text!,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50.0),
                      child: Text(
                        "244\$",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/star.png',
                    width: 30,
                  ),
                  buildSizedBox(),
                  const Text(
                    '4.4(788)',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          color: Colors.green,
                        ),
                        buildSizedBox(),
                        const Text(
                          'Oct 22:Oct 25',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 14),
              child: Row(
                children: [
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 24.0, top: 14),
              child: Text(
               description!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 14),
              child: Row(
                children: [
                  const Text(
                    'Images',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildImage(),
                    buildSizedBox(),
                    buildImage(),
                    buildSizedBox(),
                    buildImage(),
                    buildSizedBox(),
                    buildImage(),
                    buildSizedBox(),
                    buildImage()
                  ],
                ),
              ),
            ),
            buildGestureDetector(context),
          ],
        ),
      ),
    );
  }

  GestureDetector buildGestureDetector(BuildContext context) {
    return GestureDetector(
            onTap: () {
               Navigator.of(context).push(
                   MaterialPageRoute(builder: (context) => Book_details_Page(
                     image: image,
                     text: text,
                   )));

            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff8e3200)
                ,
              ),
              child: const Center(
                child: Text(
                  'Book',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          );
  }

  Stack buildStack(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity, // Set the desired width for the container
          height: 250, // Set the desired height for the container
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            color: Colors.white, // Set the background color of the container
            borderRadius: BorderRadius.circular(
                15), // Set the border radius of the container
            image: DecorationImage(
              image: AssetImage(
                image!,
              ),
              fit: BoxFit.cover,
            ), // Provide the path to your image
            // Adjust the image to cover the entire container
          ),
        ),
        Positioned(
            top: 70,
            left: 20,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,size: 40,
              ),
            )),
      ],
    );
  }

  SizedBox buildSizedBox() {
    return const SizedBox(
      width: 10,
    );
  }

  Image buildImage() {
    return Image.asset(
      image!,
      width: 150,
      height: 120,
    );
  }
}


