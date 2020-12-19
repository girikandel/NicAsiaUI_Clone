import 'package:NIC_Asia_UI/Pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      height: 310,
      width: deviceSize.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
          ),
        ]
      ),
      child: Column(
        children: [
          SizedBox(
            height: 23.0,
          ),

          //Mobile number field
          Container(
            width: deviceSize.width * 0.7,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 1.5)),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Mobile number',
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.number,
            ),
          ),

          SizedBox(
            height: 15.0,
          ),

          //Password Field
          Container(
            width: deviceSize.width * 0.7,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 1.5)),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Password',
                border: InputBorder.none,
              ),
            ),
          ),

          //Remember
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Checkbox(
                  value: false,
                  onChanged: (bool value) {},
                ),
              ),
              Text(
                'Remember mobile number',
                style: TextStyle(
                  color: Colors.red,
                ),
              )
            ],
          ),

          //Login Button
          SizedBox(
            height: 40,
            width: deviceSize.width * 0.7,
            child: RaisedButton(
              color: Colors.red,
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Text(
                'Login Now!',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          //unable to login & forget password
          SizedBox(height: 15),
          Text(
            'Unable to Login? Tap Here!',
            style: TextStyle(color: Colors.red),
          ),

          SizedBox(height: 15),
          Text(
            'Forget Password',
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
