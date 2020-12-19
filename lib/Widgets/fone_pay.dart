import 'package:NIC_Asia_UI/Widgets/payment_widgets.dart';
import 'package:flutter/material.dart';

class FonePAy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Column(
      children: [
        //Box for FonePAy payment
        Container(
          height: 180,
          width: deviceSize.width*0.9,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Colors.black)]),
          child: Column(
            children: [
              //FonePAy logo And Load More Text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: Image.asset(
                      'assets/fone_pay.png',
                      height: 30,
                      color: Colors.red,
                    ),
                  ),
                  MaterialButton(
                    onPressed: (){},
                    child: Text(
                      "Load More",
                      style: TextStyle(
                        fontSize: 13
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 8),

              //Payments option
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Payment(
                          image: 'assets/electricity.png',
                          paymentName: 'Electricity'),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Payment(
                        image: 'assets/air.png',
                        paymentName: 'Airlines',
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Payment(
                          image: 'assets/internet.png',
                          paymentName: 'Internet'),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Payment(
                        image: 'assets/tv.png',
                        paymentName: 'Tv',
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Payment(
                          image: 'assets/umberlla.png',
                          paymentName: 'Insurance'),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Payment(
                        image: 'assets/more.png',
                        paymentName: 'More',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
