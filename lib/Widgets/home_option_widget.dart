import 'package:flutter/material.dart';

class HomeOption extends StatelessWidget {
  final String image;
  final String name;
  final Color color;

  const HomeOption({Key key, this.image, this.name, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 50, width: 50, color: color),
          SizedBox(height: 10),
          Text(name),
        ],
      )),
    );
  }
}
