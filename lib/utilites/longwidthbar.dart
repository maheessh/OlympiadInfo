import 'package:flutter/material.dart';
import 'package:olyinfo/constant.dart';

class TopBanner extends StatelessWidget {
  final title;
  final subtitle;


  TopBanner({Key? key, this.title, this.subtitle, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
          boxShadow: [
            BoxShadow(
              color: shadowColors,
              spreadRadius: 2,
              blurRadius: 15,
              offset: const Offset(5, 5), // changes position of shadow
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
