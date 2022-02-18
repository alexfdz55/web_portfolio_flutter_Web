import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/app/shared/constant.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "País",
                      text: "Cuba",
                    ),
                    AreaInfoText(
                      title: "Ciudad",
                      text: "Santiago de Cuba",
                    ),
                    AreaInfoText(
                      title: "Edad",
                      text: "26",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DESCARGAR CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                            onPressed: () {},
                            // onPressed: () =>
                            //     _launchURL('https://github.com/alexfdz55'),
                          ),
                          IconButton(
                            icon: SvgPicture.asset("assets/icons/telegram.svg"),
                            onPressed: () {},
                            // onPressed: () =>
                            //     _launchURL('https://t.me/alexfdz55'),
                          ),
                          // IconButton(
                          //   onPressed: () {},
                          //   icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          // ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void _launchURL(String url) async =>
  //     await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
