import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sitesbanner extends StatelessWidget {
  final websitename;
  final weblink;

  const Sitesbanner({Key? key, this.websitename, this.weblink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: TextButton(
          onPressed: () async {
            var url = Uri.parse(weblink);
            launchUrl(
              url,
            ); //forceWebView is true now
          },
          child: Text(websitename),
        ),
      ),
    );
  }
}
