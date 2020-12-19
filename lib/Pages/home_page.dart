// import 'dart:html';

import 'package:NIC_Asia_UI/Widgets/home_option_widget.dart';
import 'package:NIC_Asia_UI/Widgets/last_transaction_widget.dart';
import 'package:NIC_Asia_UI/Widgets/side_menu_widet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: SideMenu(),
      //AppBAr
      appBar: PreferredSize(
        preferredSize: Size(deviceSize.width, 200),
        child: Stack(
          children: [
            //Back container
            Container(
              height: 200,
            ),
            //App Bar
            Container(
              height: 135,
              child: AppBar(
                toolbarHeight: 60,
                title: Text('Welcome Girija!'),
                centerTitle: true,
                actions: [
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Image.asset(
                      'assets/scan2pay.png',
                      height: 32,
                      width: 32,
                    ),
                  ),
                ],
              ),
            ),

            //Top Account Information
            Positioned(
              top: 100,
              right: 20,
              left: 20,
              child: _topAccountInfo(deviceSize),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              //What would you like to?
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/nicLogo.png'),
                  SizedBox(width: 20),
                  Text(
                    'What would you like to?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              //Home OPtion
              Column(
                children: [
                  GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      HomeOption(
                        name: 'My Account',
                        image: 'assets/sas.png',
                      ),
                      HomeOption(
                          name: 'Payment',
                          image: 'assets/payment.png',
                          color: Colors.red),
                      HomeOption(
                          name: 'Load Wallet', image: 'assets/esewa.jpg'),
                      HomeOption(
                          name: 'Send Money',
                          image: 'assets/fund_transfer.png',
                          color: Colors.red),
                      HomeOption(
                          name: 'Schedule\nPayment',
                          image: 'assets/schedule_payment.png',
                          color: Colors.red),
                      HomeOption(
                          name: ' Scan To Pay',
                          image: 'assets/scan2pay.png',
                          color: Colors.red),
                    ],
                  ),
                ],
              ),

              //Account Activities
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/nicLogo.png'),
                  SizedBox(width: 20),
                  Text(
                    'Account Activities',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              //Last Transaction
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 200,
                width: deviceSize.width,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      LastTransaction(
                        transactionName: "LoadEsewa via Esewa App, \n11957616",
                        isDebit: true,
                        transactionDate: '22-09-2020',
                        transactionAmt: 1700.00,
                      ),
                      LastTransaction(
                        transactionName:
                            "LoadKhalti via Khalti App, \n11957616",
                        isDebit: true,
                        transactionDate: '22-09-2020',
                        transactionAmt: 3000.00,
                      ),
                      LastTransaction(
                        transactionName: "CashBack",
                        isDebit: false,
                        transactionDate: '22-09-2020',
                        transactionAmt: 15.25,
                      ),
                      LastTransaction(
                        transactionName: "Deposit: Self",
                        isDebit: false,
                        transactionDate: '22-09-2020',
                        transactionAmt: 50000.00,
                      ),
                      LastTransaction(
                        transactionName: "Withdraw cheque, 0123654",
                        isDebit: true,
                        transactionDate: '22-09-2020',
                        transactionAmt: 30000.00,
                      ),
                      LastTransaction(
                        transactionName: "MobBank Transfer",
                        isDebit: false,
                        transactionDate: '22-09-2020',
                        transactionAmt: 20000.00,
                      ),
                      LastTransaction(
                        transactionName: 'Mobile Banking Charge',
                        isDebit: true,
                        transactionDate: '22-09-2020',
                        transactionAmt: 400.00,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Top Account Info
  Widget _topAccountInfo(Size deviceSize) {
    return Container(
      height: 85,
      width: deviceSize.width * 0.75,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage('assets/anil.jpg'),
          ),
          SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SULAV BACHAT',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(
                'A4543426546675787',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'NPR.',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '1,23,756.00',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.visibility)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
} 
