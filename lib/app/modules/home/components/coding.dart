import 'package:flutter/material.dart';
import 'package:web_portfolio/app/shared/constant.dart';
import 'package:web_portfolio/app/shared/widgets/animated_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Lenguajes de programación",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "C/C++",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          label: "C#",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.58,
          label: "Matlab",
        ),
      ],
    );
  }
}
