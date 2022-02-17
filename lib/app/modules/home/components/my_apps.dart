import 'package:flutter/material.dart';
import 'package:web_portfolio/app/data/models/models/Project.dart';
import 'package:web_portfolio/app/shared/constant.dart';
import 'package:web_portfolio/app/shared/responsive/responsive.dart';
import 'app_info_card.dart';

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mis Proyectos Flutter",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: defaultPadding),

        Responsive(
          mobile: AppsSwiper(),
          mobileLarge: AppsSwiper(),
          tablet: AppsSwiperDesktop(),
          desktop: AppsSwiperDesktop(),
        )
        // Responsive(
        //   mobile: _ProjectsGridView(
        //     crossAxisCount: 1,
        //     childAspectRatio: 1.7,
        //   ),
        //   mobileLarge: _ProjectsGridView(crossAxisCount: 2),
        //   tablet: _ProjectsGridView(childAspectRatio: 1.1),
        //   desktop: _ProjectsGridView(),
        // )
      ],
    );
  }
}

// class AppsSwiper extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 600,
//       child: ListView.separated(
//         scrollDirection: Axis.vertical,
//         itemBuilder: (context, i) => Row(
//           children: [
//             AppInfoCard(project: apps[i]),
//             AppInfoCard(project: apps[i + 1]),
//           ],
//         ),
//         itemCount: apps.length,
//         separatorBuilder: (_, index) => SizedBox(width: 5),
//       ),
//     );
//   }
// }

class AppsSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: apps.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.5,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => AppInfoCard(app: apps[index]),
    );
  }
}

class AppsSwiperDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => AppInfoCard(app: apps[i]),
        itemCount: apps.length,
        separatorBuilder: (_, index) => SizedBox(width: 5),
      ),
    );
  }
}

class _ProjectsGridView extends StatelessWidget {
  const _ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: apps.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => AppInfoCard(app: apps[index]),
    );
  }
}
