import 'package:flutter/material.dart';
import 'package:olyinfo/constant.dart';
import 'package:olyinfo/utilites/sites_launch.dart';

class Important extends StatefulWidget {
  const Important({Key? key}) : super(key: key);

  @override
  State<Important> createState() => _ImportantState();
}

class _ImportantState extends State<Important> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.pexels.com/photos/14035170/pexels-photo-14035170.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                fit: BoxFit.fill)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.black12,
                Colors.red.shade100,
              ])),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: const Text('Important Sites'),
              centerTitle: true,
              backgroundColor: kBackgroundColor,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: const [
                  Sitesbanner(
                    websitename: 'STEM Foundation Nepal',
                    weblink: 'https://www.stemnepal.org/',
                  ),
                  Sitesbanner(
                    websitename: 'Olympiad Genius Prep',
                    weblink: 'https://www.olympiadgenius.com/',
                  ),
                  Sitesbanner(
                    websitename: 'Olymp ED',
                    weblink:
                        'https://courses.olymped.com/?fbclid=IwAR1HV1Um5BUiqT56I1iLp_hLi4DuebuBn_1NvSJpyjL65UOayYrOPHql5w0',
                  ),
                  Sitesbanner(
                    websitename: 'SIMCC',
                    weblink:
                        'https://courses.olymped.com/?fbclid=IwAR1HV1Um5BUiqT56I1iLp_hLi4DuebuBn_1NvSJpyjL65UOayYrOPHql5w0',
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
