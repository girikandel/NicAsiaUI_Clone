import 'package:NIC_Asia_UI/Widgets/fone_pay.dart';
import 'package:NIC_Asia_UI/Widgets/login_form.dart';
import 'package:NIC_Asia_UI/Widgets/slide.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      //Body
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 450,
                    width: deviceSize.width,
                  ),
                  //Mountain Image
                  Container(
                    height: 350,
                    width: deviceSize.width,
                    child: Image.asset(
                      "assets/mountain.png",
                      fit: BoxFit.cover,
                    ),
                  ),

                  //TopSection sms icon
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Image.asset('assets/sms.png'),
                  ),

                  //QR icon
                  Positioned(
                    top: 20,
                    right: 63,
                    child: Image.asset('assets/scan2pay.png',height: 27,),
                  ),

                  //Callender Icon
                  Positioned(
                    top: 30,
                    left: 20,
                    child: Image.asset(
                      'assets/calendar.png',
                      height: 25,
                      width: 25,
                      color: Colors.white,
                    ),
                  ),

                  //Nic Asia Logo
                  Positioned(
                    top: 10,
                    left: 110,
                    right: 110,
                    child: Image.asset('assets/logo.png'),
                  ),

                  //Login Form
                  Positioned(
                    top: 120,
                    left: 20,
                    right: 20,
                    child: LoginForm(),
                  ),
                ],
              ),

              //FonePAy option
              FonePAy(),

              SizedBox(height: 10),

              //Slide
              Slide(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),

      //Bottom Sheet
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black)],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        child: Stack(
          children: [
            //Bottom Four icon
            Positioned(
              bottom: 2,
              right: 2,
              left: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/sas.png',
                      height: 40,
                      width: 40,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/contact_list.png',
                      height: 40,
                      width: 40,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/payment.png',
                      color: Colors.red,
                      height: 40,
                      width: 40,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/general_inquiry.png',
                      color: Colors.red,
                      height: 40,
                      width: 40,
                    ),
                  ),
                ],
              ),
            ),

            //Bottom two button (Online sevices / Offers)
            Positioned(
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Online Services
                  Expanded(
                    child: RaisedButton(
                      color: Colors.red,
                      onPressed: () {},
                      child: Text(
                        'ONLINE SERVICES',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(width: 35),
                  //Offers
                  Expanded(
                    child: RaisedButton(
                      color: Colors.red,
                      onPressed: () {},
                      child: Text(
                        'OFFERS',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
