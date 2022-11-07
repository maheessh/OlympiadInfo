import 'package:flutter/material.dart';
import 'package:olyinfo/constant.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utilites/aboutparticularolympiad.dart';

class Techpage extends StatefulWidget {
  const Techpage({Key? key}) : super(key: key);

  @override
  State<Techpage> createState() => _TechpageState();
}

class _TechpageState extends State<Techpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/3913025/pexels-photo-3913025.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
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
            backgroundColor: kBackgroundColor,
            centerTitle: true,
            title: const Text('Tech & IT Olympiads'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OlyInfo(
                    olyname: 'Nepal Olympiad for Informatics',
                    olyinfo:
                        'Nepal Olympiad for Informatics (NOI) is the national event to select the bright higher secondary school (+2) students who are interested in computer science and programming. ',
                    olyreglink:
                        'https://www.stemnepal.org/index.php/nepal-olympiad-for-informatics/',
                    olysamplelink:
                        'https://www.stemnepal.org/index.php/nepal-olympiad-for-informatics/',
                    moreinfo:
                        'https://www.stemnepal.org/index.php/nepal-olympiad-for-informatics/',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OlyInfo(
                    olyname: 'International Olympiad for Informatics',
                    olyinfo:
                        'The International Olympiad in Informatics is one of several international science Olympiads held annually around the world. Exceptional high school students from various countries compete in the prestigious algorithmic competition to sharpen their informatics skills',
                    olyreglink: 'https://ioinformatics.org/',
                    olysamplelink: 'https://ioinformatics.org/',
                    moreinfo: 'https://ioinformatics.org/',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OlyInfo(
                    olyname: 'World Robot Olympiad Nepal',
                    olyinfo:
                        'World Robot Olympiad Nepal is an authorized event and STEM Foundation Nepal is the affiliate organization of World Robot Olympiad Association for National Competition in Nepal. World Robot Olympiad Nepal is a screening Olympiad event in Nepal for WRO and will be organized by STEM Foundation Nepal in various parts of Nepal.',
                    olyreglink:
                        'https://www.stemnepal.org/index.php/world-robot-olympiad/',
                    olysamplelink:
                        'https://www.stemnepal.org/index.php/world-robot-olympiad/',
                    moreinfo:
                        'https://www.stemnepal.org/index.php/world-robot-olympiad/',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OlyInfo(
                    olyname: 'World Robot Olympiad',
                    olyinfo:
                        'Every year WRO Association has been conducting global competitions since 2004 in different countries. In the year2018, WRO has conducted at Chiang Mai, Thailand on November 16-18 and for the first time Thailand has become a country to host World Robotics Olympiad twice.',
                    olyreglink: 'https://wro-association.org/',
                    olysamplelink: 'https://wro-association.org/',
                    moreinfo: 'https://wro-association.org/',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.redAccent,
                        backgroundColor: Colors.white),
                    onPressed: () async {
                      var url = Uri.parse(
                          'https://molympiad.wordpress.com/list-of-mathematics-competitions/');
                      launchUrl(
                        url,
                      ); //forceWebView is true now
                    },
                    child: Text('List of other tech Olympiad'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
