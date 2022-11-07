import 'package:flutter/material.dart';
import 'package:olyinfo/constant.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utilites/aboutparticularolympiad.dart';

class Otherpage extends StatefulWidget {
  const Otherpage({Key? key}) : super(key: key);

  @override
  State<Otherpage> createState() => _OtherpageState();
}

class _OtherpageState extends State<Otherpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/5217882/pexels-photo-5217882.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
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
            title: const Text('Math Olympiads'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OlyInfo(
                    olyname: 'Nepal Genius Olympiad',
                    olyinfo:
                        'GENIUS Olympiad is an international high school project competition about environmental issues. It is founded and organized by the Terra Science and Education and hosted by the State University of New York at Oswego. GENIUS Olympiad will host projects in five general disciplines with an environmental focus.',
                    olyreglink:
                        'https://www.stemnepal.org/index.php/genius-olympiad/',
                    olysamplelink:
                        'https://www.stemnepal.org/index.php/genius-olympiad/',
                    moreinfo:
                        'https://www.stemnepal.org/index.php/genius-olympiad/',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OlyInfo(
                    olyname: 'International Genius Olympiad',
                    olyinfo:
                        'GENIUS Olympiad promotes a global understanding of environmental issues and the achievement of sustainability through basic science, arts, creative writing, engineering, design, and business development.',
                    olyreglink: 'https://geniusolympiad.org/',
                    olysamplelink: 'https://geniusolympiad.org/',
                    moreinfo: 'https://geniusolympiad.org/aboutUs.html',
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
                    child: Text('List of every Olympiads'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
