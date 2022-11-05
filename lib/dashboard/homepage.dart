import 'package:flutter/material.dart';
import 'package:olyinfo/constant.dart';
import 'package:olyinfo/dashboard/dashboard_navigate/important_sites.dart';
import 'package:olyinfo/dashboard/dashboard_navigate/science_page.dart';
import 'package:olyinfo/utilites/largebanner.dart';
import 'package:olyinfo/utilites/sqaurebox.dart';

import '../utilites/longwidthbar.dart';
import 'dashboard_navigate/junioroly_page.dart';
import 'dashboard_navigate/math_page.dart';
import 'dashboard_navigate/other_page.dart';
import 'dashboard_navigate/tech_page.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/1762851/pexels-photo-1762851.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
              fit: BoxFit.fill)),
      child: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(begin: Alignment.center,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black12,
            Colors.red.shade100,
          ])
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: const Text(
              'OlympiadInfo',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: kBackgroundColor,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  child: TopBanner(
                    title: 'Math Olympiads',
                    subtitle:
                        'All international and national olympiad related to maths.',
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Mathpage()),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: const SquareBox(
                          title: 'Science Olympiads',
                          subtitle: 'Find all olympiads',
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SciencePage()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: const SquareBox(
                          title: 'Junior Olympiads',
                          subtitle: 'Find all olympiads',
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Juniorpage()),
                          );
                        },
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  child: const LargeBanner(
                    title: 'Tech & IT olympiad',
                    description: 'Take part in all IT related olympiads',
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Techpage()),
                    );
                  },
                ),
                GestureDetector(
                  child: TopBanner(
                    title: 'Other Olympiads',
                    subtitle:
                        'All international and national olympiad other than above.',
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Otherpage()),
                    );
                  },
                ),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)),
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: const Center(
                          child: Text(
                        'Important Sites for Olympiad Information',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent),
                      )),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Important()),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
