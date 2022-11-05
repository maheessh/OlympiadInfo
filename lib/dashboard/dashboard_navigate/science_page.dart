import 'package:flutter/material.dart';
import 'package:olyinfo/constant.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utilites/aboutparticularolympiad.dart';

class SciencePage extends StatefulWidget {
  const SciencePage({Key? key}) : super(key: key);

  @override
  State<SciencePage> createState() => _SciencePageState();
}

class _SciencePageState extends State<SciencePage> {
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
            title: const Text('Science Olympiads'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OlyInfo(
                    olyname: 'Nepal Biology Olympiad',
                    olyinfo:
                        'is the national event to select the bright higher secondary school (+2/A Levels) students from biology background who are most likely to excel in the health, biological, natural and life sciences fields.',
                    olyreglink:
                        'https://www.stemnepal.org/index.php/nepal-biology-olympiad/',
                    olysamplelink:
                        'https://www.stemnepal.org/index.php/nepal-biology-olympiad/',
                    moreinfo:
                        'https://www.stemnepal.org/index.php/nepal-biology-olympiad/',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OlyInfo(
                    olyname: 'Nepal Chemistry Olympiad',
                    olyinfo:
                        'NeChO is the national event to select the bright higher secondary school (+2) students from chemistry background who are tested on their chemistry knowledge and skills in a written theoretical examinations and practical exam.',
                    olyreglink:
                        'https://www.stemnepal.org/index.php/nepal-chemistry-olympiad/',
                    olysamplelink:
                        'https://www.stemnepal.org/index.php/nepal-chemistry-olympiad/',
                    moreinfo:
                        'https://www.stemnepal.org/index.php/nepal-chemistry-olympiad/',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OlyInfo(
                    olyname: 'Nepal Earth Science Olympiad',
                    olyinfo:
                        'NESO is the national event to select the bright higher secondary school (+2) students from earthscience background who are tested on their earthscience knowledge and skills in a written theoretical examinations and practical exam.',
                    olyreglink:
                        'https://www.stemnepal.org/index.php/nepal-earth-science-olympiad/',
                    olysamplelink:
                        'https://www.stemnepal.org/index.php/nepal-earth-science-olympiad/',
                    moreinfo:
                        'https://www.stemnepal.org/index.php/nepal-earth-science-olympiad/',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OlyInfo(
                    olyname: 'Nepal Geography Olympiad',
                    olyinfo:
                        'NGeO is the national event to select the bright higher secondary school (+2) students from geography background who are tested on their geography knowledge and skills in a written theoretical examinations and practical exam.',
                    olyreglink:
                        'https://www.stemnepal.org/index.php/nepal-geography-olympiad/',
                    olysamplelink:
                        'https://www.stemnepal.org/index.php/nepal-geography-olympiad/',
                    moreinfo:
                        'https://www.stemnepal.org/index.php/nepal-geography-olympiad/',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OlyInfo(
                    olyname: 'International Biology Olympiad',
                    olyinfo:
                        "The International Biology Olympiad e.V. (IBO) is the association that organizes the world's premier biology competition for secondary school students.",
                    olyreglink: 'https://www.ibo-info.org/en/',
                    olysamplelink: 'https://www.ibo-info.org/en/',
                    moreinfo: 'https://www.ibo-info.org/en/',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OlyInfo(
                    olyname: 'International Chemistry Olympiad',
                    olyinfo:
                        "The International Chemistry Olympiad (IChO) is a chemistry competition organized for students at secondary school level with the aim of promoting international contacts in chemistry.",
                    olyreglink: 'https://www.ichosc.org/',
                    olysamplelink: 'https://www.ichosc.org/',
                    moreinfo: 'https://www.ichosc.org/',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OlyInfo(
                    olyname: 'International Geography Olympiad',
                    olyinfo:
                        'The International Geography Olympiad (iGeo) is an annual competition for the best 16 to 19 year old geography students from all over the world. Students chosen to represent their countries are the very best, chosen from thousands of students who participate enthusiastically in their own National Geography Olympiads.',
                    olyreglink: 'http://www.geoolympiad.org/',
                    olysamplelink: 'http://www.geoolympiad.org/',
                    moreinfo: 'http://www.geoolympiad.org/',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OlyInfo(
                    olyname: 'International Earth Science Olympiad',
                    olyinfo:
                        "The International Earth Science Olympiad (IESO) is a earth science competition organized for students at secondary school level with the aim of promoting international contacts in earthscience.",
                    olyreglink: 'https://www.ieso-info.org/',
                    olysamplelink: 'https://www.ieso-info.org/',
                    moreinfo: 'https://www.ieso-info.org/',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.redAccent,
                        backgroundColor: Colors.white),
                    onPressed: () async {
                      var url = Uri.parse('https://www.stemnepal.org/');
                      launchUrl(
                        url,
                      ); //forceWebView is true now
                    },
                    child: Text('For more info click here'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
