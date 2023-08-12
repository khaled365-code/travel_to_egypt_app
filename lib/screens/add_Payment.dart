import 'package:flutter/material.dart';
import 'package:ourprojectiti/screens/payment.dart';

class ViewPayment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 50, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/Ellipse 2.png'),
                radius: 30,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Payment',
                style: TextStyle(
                    color:  Color(0XFFde7542),
                    fontSize: 23,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.apple,
                    size: 60,
                    color: Color(0xffAAAAAA),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Apple ID',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'Balance: PKR2,6000',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          color:  Color(0XFFde7542)),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 34,
                  ),
                  SizedBox(width: 30,),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image(image: AssetImage('assets/images/MasterCard_Logo 1.png')),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Master Card',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '**6356',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          color:  Color(0XFFde7542)),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 34,
                  ),
                  SizedBox(width: 30,),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Image(image: AssetImage('assets/images/Visa_Logo 1.png')),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Visa',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '**5645',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          color:  Color(0XFFde7542)),
                      ),
                    ],
                  ),

                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 34,
                  ),
                  SizedBox(width: 30,),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: ()
                {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Payment()
                  ));
                },
                child: Text(
                  'Add Payment Method',
                  style: TextStyle(
                      color:  Color(0XFFde7542),
                      fontSize: 23,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),

    );
  }
}