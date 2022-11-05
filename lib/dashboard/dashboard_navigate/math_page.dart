import 'package:flutter/material.dart';
import 'package:olyinfo/constant.dart';
import 'package:olyinfo/utilites/aboutparticularolympiad.dart';
import 'package:url_launcher/url_launcher.dart';

class Mathpage extends StatefulWidget {
  const Mathpage({Key? key}) : super(key: key);

  @override
  State<Mathpage> createState() => _MathpageState();
}

class _MathpageState extends State<Mathpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/1762851/pexels-photo-1762851.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
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
                    olyname: 'Nepal Mathematics Olympiad',
                    olyinfo:
                        'Yearly Mathematics Olympiad conducted by Nepal Math Orgs.',
                    olyreglink: 'https://www.facebook.com/manepal.org.np/',
                    olysamplelink: 'https://www.stemnepal.org/',
                    moreinfo: '',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OlyInfo(
                    olyname: 'International Mathematics Olympiad',
                    olyinfo:
                        'The International Mathematical Olympiad (IMO) is the World Championship Mathematics Competition for High School students and is held annually in a different country.',
                    olyreglink:
                        'https://www.stemnepal.org/index.php/international-olympiad/',
                    olysamplelink: 'https://www.imo-official.org/problems.aspx',
                    moreinfo: 'https://www.imo-official.org/',
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
                    child: const Text('List of Every Math Olympiad'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
