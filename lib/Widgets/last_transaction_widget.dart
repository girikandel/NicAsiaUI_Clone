import 'package:flutter/material.dart';

class LastTransaction extends StatelessWidget {
  final String transactionName;
  final String transactionDate;
  final double transactionAmt;
  final bool isDebit;

  const LastTransaction({Key key, this.transactionName, this.transactionDate, this.isDebit,this.transactionAmt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.only(right: 10),
      height: 75,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.black)]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //green and red container
              Container(
                height: 75,
                width: 10,
                decoration: BoxDecoration(
                  color: isDebit ? Colors.red: Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
              ),
              //TRansaction Details
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    transactionName,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 8),
                  Text(
                    transactionDate,
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ],
          ),

          //Transaction Amount
          Text(transactionAmt.toString()),
        ],
      ),
    );
  }
}
