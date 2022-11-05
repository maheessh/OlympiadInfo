import 'package:flutter/material.dart';
import 'package:olyinfo/constant.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utilites/aboutparticularolympiad.dart';

class Juniorpage extends StatefulWidget {
  const Juniorpage({Key? key}) : super(key: key);

  @override
  State<Juniorpage> createState() => _JuniorpageState();
}

class _JuniorpageState extends State<Juniorpage> {
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
              title: const Text('Junior Olympiads'),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: OlyInfo(
                      olyname: 'Nepal Junior Math Olympiad',
                      olyinfo:
                          'Nepal Junior Maths Olympiad is a national talent hunt event of the young mathematicians aged 16 or below, who are studying in the secondary school till grade 11. ',
                      olyreglink:
                          'https://www.stemnepal.org/index.php/nepal-junior-math-olympiad/',
                      olysamplelink:
                          'https://www.stemnepal.org/index.php/nepal-junior-math-olympiad/',
                      moreinfo:
                          'https://www.stemnepal.org/index.php/nepal-junior-math-olympiad/',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: OlyInfo(
                      olyname: 'Nepal Junior Science Olympiad',
                      olyinfo:
                          'Nepal Junior Science Olympiad is a national talent hunt event of the young science enthusiasts aged 16 or below, who are studying in the secondary school till grade 12.',
                      olyreglink:
                          'https://www.stemnepal.org/index.php/nepal-junior-science-olympiad/',
                      olysamplelink:
                          'https://www.stemnepal.org/index.php/nepal-junior-science-olympiad/',
                      moreinfo:
                          'https://www.stemnepal.org/index.php/nepal-junior-science-olympiad/',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: OlyInfo(
                      olyname: 'International Junior Science Olympiad',
                      olyinfo:
                          'The International Junior Science Olympiad (IJSO) is an annual individual and team competition in the Natural Sciences for the students who are under Sixteen years old on 31st December of the competition  year.',
                      olyreglink:
                          'https://www.stemnepal.org/index.php/nepal-junior-science-olympiad/',
                      olysamplelink:
                          'https://www.stemnepal.org/index.php/nepal-junior-science-olympiad/',
                      moreinfo: 'http://www.ijsoweb.org/',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: OlyInfo(
                      olyname: 'International Junior Math Olympiad',
                      olyinfo:
                          'The International Junior Math Olympiad (IJMO) is an annual individual and team competition in the Maths for the students who are under Sixteen years old on 31st December of the competition  year.',
                      olyreglink: 'https://simcc.org/',
                      olysamplelink: 'https://simcc.org/',
                      moreinfo: 'https://simcc.org/',
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
                      child: Text('List of Every Junior Olympiad'))
                ],
              ),
            ),
          ),
        ));
  }
}
