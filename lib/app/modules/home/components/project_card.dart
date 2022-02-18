import 'package:flutter/material.dart';
import 'package:web_portfolio/app/data/models/projects.dart';
import 'package:web_portfolio/app/shared/constant.dart';
import 'package:web_portfolio/app/shared/responsive/responsive.dart';

class ProjectCard extends StatelessWidget {
  final AppInfo project;

  const ProjectCard({required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: bgColor2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            project.description,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 80,
                child: Image.asset(
                  "assets/proyects/${project.namImg}",
                  fit: BoxFit.cover,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Más detalles >>",
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
