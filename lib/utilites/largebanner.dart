import 'package:flutter/material.dart';
import 'package:olyinfo/constant.dart';

class LargeBanner extends StatelessWidget {
  final title;
  final description;

  const LargeBanner({Key? key, this.title, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
          boxShadow: [
            BoxShadow(
              color: shadowColors,
              blurRadius: 3,
              spreadRadius: 5,
              offset: const Offset(5,5)
            )
          ]
        ),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(description)
          ],
        ),
      ),
    );
  }
}
