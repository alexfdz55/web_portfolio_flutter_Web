import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:web_portfolio/app/data/models/models/Project.dart';
import 'package:web_portfolio/app/shared/constant.dart';
import 'package:web_portfolio/app/shared/responsive/responsive.dart';

class CardSwiper extends StatelessWidget {
  final AppInfo app;

  const CardSwiper({required this.app});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: Text(
              app.description,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          const SizedBox(height: defaultPadding),
          Responsive(
            mobile: _AppsSwiper(app: this.app),
            mobileLarge: _AppsSwiper(app: this.app),
            tablet: _AppsSwiperDesktop(app: this.app),
            desktop: _AppsSwiperDesktop(app: this.app),
          ),
        ],
      ),
    );
  }
}

class _AppsSwiper extends StatelessWidget {
  final AppInfo app;

  const _AppsSwiper({required this.app});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: app.imgList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.5,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, i) => _AppInfoCard(this.app.imgList[i]),
    );
  }
}

class _AppsSwiperDesktop extends StatelessWidget {
  final AppInfo app;

  const _AppsSwiperDesktop({required this.app});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => _AppInfoCard(this.app.imgList[i]),
        itemCount: app.imgList.length,
        separatorBuilder: (_, index) => SizedBox(width: 5),
      ),
    );
  }
}

class _AppInfoCard extends StatefulWidget {
  final String urlImage;
  const _AppInfoCard(this.urlImage);

  @override
  _AppInfoCardState createState() => _AppInfoCardState();
}

class _AppInfoCardState extends State<_AppInfoCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) {
        isHover = true;
        setState(() {});
      },
      onExit: (_) {
        isHover = false;
        setState(() {});
      },
      child: HoverAnimatedContainer(
        cursor: SystemMouseCursors.click,
        width: 250,
        height: 500,
        hoverWidth: 300,
        hoverHeight: 600,
        child: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage(widget.urlImage),
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20.0),
        ),
        hoverDecoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }
}

// class CardSwiper extends StatelessWidget {
//   final AppInfo app;

//   const CardSwiper({required this.app});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: 250,
//         height: 500,
//         padding: EdgeInsets.only(top: 10.0),
//         child: Swiper(
//           // layout: SwiperLayout.STACK,
//           // itemWidth: _screenSize.width * 0.8,
//           // itemHeight: _screenSize.height * 0.4,
//           pagination: new SwiperPagination(
//             margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
//             builder: new DotSwiperPaginationBuilder(
//                 color: Colors.grey,
//                 activeColor: Colors.greenAccent,
//                 size: 20.0,
//                 activeSize: 20.0),
//           ),
//           itemBuilder: (BuildContext context, int index) {
//             return ClipRRect(
//               borderRadius: BorderRadius.circular(20.0),
//               child: GestureDetector(
//                 onTap: () {},
//                 child: FadeInImage(
//                   image: NetworkImage(this.app.imgList[index]),
//                   placeholder: AssetImage('assets/loading.gif'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             );
//           },
//           itemCount: this.app.imgList.length,
//         )
//         //   Swiper(
//         //     layout: SwiperLayout.STACK,
//         //     itemWidth: _screenSize.width * 0.7,
//         //     itemHeight: _screenSize.height * 0.4,
//         //     itemBuilder: (BuildContext context, int index) {
//         //       return ClipRRect(
//         //         borderRadius: BorderRadius.circular(20.0),
//         //         child: GestureDetector(
//         //           onTap: () {},
//         //           child: FadeInImage(
//         //             image: NetworkImage(_.imagesUrls[index]),
//         //             placeholder: AssetImage('assets/logo.png'),
//         //             fit: BoxFit.cover,
//         //           ),
//         //         ),
//         //       );
//         //     },
//         //     itemCount: _.imagesUrls.length,
//         //     // pagination: new SwiperPagination(),
//         //     // control: new SwiperControl(),
//         //   ),
//         );
//   }
// }
