import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant.dart';

class OlyInfo extends StatelessWidget {
  final olyname;
  final olyinfo;
  final olysamplelink;
  final olyreglink;
  final moreinfo;

  const OlyInfo(
      {Key? key,
      this.olyname,
      this.olyinfo,
      this.olysamplelink,
      this.olyreglink,
      this.moreinfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        height: 300,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              olyname,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: frontdarkcolor,
                  fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    olyinfo,
                    style: TextStyle(fontSize: 13, color: frontcolor),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Important Links',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 13, color: frontcolor),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: kBlueColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: TextButton(
                    onPressed: () async {
                      var url = Uri.parse(moreinfo);
                      launchUrl(
                        url,
                      ); //forceWebView is true now
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          EvaIcons.link2,
                          color: kOrangeColor,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('More Info')
                      ],
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: kBlueColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextButton(
                        onPressed: () async {
                          var url = Uri.parse(olyreglink);
                          launchUrl(
                            url,
                          ); //forceWebView is true now
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              EvaIcons.link2,
                              color: kOrangeColor,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text('Register')
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: kBlueColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: TextButton(
                          onPressed: () async {
                            var url = Uri.parse(olysamplelink);
                            launchUrl(url);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                EvaIcons.link2,
                                color: kOrangeColor,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('Paper')
                            ],
                          )),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
