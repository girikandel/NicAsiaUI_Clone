import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  final String image;
  final String paymentName;

  const Payment({Key key, this.image, this.paymentName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image,height: 50),
        SizedBox(height:5),
        Text(
          paymentName,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}