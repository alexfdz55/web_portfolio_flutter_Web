import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_portfolio/app/data/models/models/Project.dart';
import 'package:web_portfolio/app/routes/app_pages.dart';
import 'package:web_portfolio/app/shared/constant.dart';
import 'package:web_portfolio/app/shared/responsive/responsive.dart';

class AppInfoCard extends StatelessWidget {
  final AppInfo project;

  const AppInfoCard({required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              project.namImg != null
                  ? Container(
                      height: 80,
                      child: Image.asset(
                        "assets/apps/${project.namImg}",
                        fit: BoxFit.cover,
                      ),
                    )
                  : Container(),
              TextButton(
                child: Text("Más detalles >>",
                    style: TextStyle(color: primaryColor)),
                onPressed: () => Get.toNamed(Routes.INFO, arguments: project),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
