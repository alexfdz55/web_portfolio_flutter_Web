import 'package:flutter/material.dart';
import 'package:web_portfolio/app/shared/constant.dart';

class MyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgColor2,
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/yo.jpg"),
            ),
            Spacer(),
            Text(
              "Alexander Fernández Matos",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Ingeniero Automático\n Desarrollador de Flutter",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
