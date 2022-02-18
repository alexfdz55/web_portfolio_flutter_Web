import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:web_portfolio/app/data/models/projects.dart';
import 'package:web_portfolio/app/shared/constant.dart';
import 'package:web_portfolio/app/shared/responsive/responsive.dart';

class CardSwiper extends StatelessWidget {
  final AppInfo app;

  const CardSwiper({required this.app});

  @override
  Widget build(BuildContext context) {
    // final kWidth = MediaQuery.of(context).size.width;

    final contentTablet = Column(
      children: [
        _Info(app: app),
        _AppsSwiperDesktop(app: this.app),
      ],
    );
    final contentMovil = Column(
      children: [_Info(app: app), _AppsSwiperMovil(app: this.app)],
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Responsive(
            mobile: contentMovil,
            mobileLarge: contentMovil,
            tablet: contentTablet,
            desktop: Row(
              children: [
                Expanded(flex: 4, child: _Info(app: app)),
                Expanded(flex: 6, child: _AppsSwiperDesktop(app: this.app)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Info extends StatelessWidget {
  final AppInfo app;

  const _Info({required this.app});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      margin:
          (Responsive.isMobile(context) || Responsive.isMobileLarge(context))
              ? const EdgeInsets.only(left: 20, right: 20, top: 30)
              : const EdgeInsets.only(left: 50, right: 50, top: 30),
      child: Padding(
        padding:
            (Responsive.isMobile(context) || Responsive.isMobileLarge(context))
                ? const EdgeInsets.only(left: 20, right: 20, top: 30)
                : const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Descripción: ',
              textAlign: TextAlign.justify,
              style: TextStyle(color: primaryColor, fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              app.description,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            if (app.skills.length != 0)
              Text(
                'Principales habilidades: ',
                textAlign: TextAlign.justify,
                style: TextStyle(color: primaryColor, fontSize: 20),
              ),
            SizedBox(height: 10),
            Column(
                children: app.skills.map((item) => new _Skill(item)).toList()),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class _Skill extends StatelessWidget {
  final String skill;

  const _Skill(this.skill);

  @override
  Widget build(BuildContext context) {
    double kWidth = 200;

    if (Responsive.isMobile(context)) {
      kWidth = kWidth = MediaQuery.of(context).size.width - 140;
    } else if (Responsive.isMobileLarge(context)) {
      kWidth = MediaQuery.of(context).size.width - 140;
    } else if (Responsive.isTablet(context)) {
      kWidth = MediaQuery.of(context).size.width - 250;
    } else if (Responsive.isDesktop(context)) {
      kWidth = MediaQuery.of(context).size.width * 0.4 - 250;
    }

    return Container(
      constraints: BoxConstraints(minWidth: 200),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle_outline, color: primaryColor),
          SizedBox(width: 20),
          Container(
            width: kWidth,
            child: Text(this.skill),
          ),
        ],
      ),
    );
  }
}

class _AppsSwiperMovil extends StatelessWidget {
  final AppInfo app;

  const _AppsSwiperMovil({required this.app});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: app.imgList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.45,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
        ),
        itemBuilder: (context, i) => _AppInfoCard(this.app.imgList[i]),
      ),
    );
  }
}

class _AppsSwiperDesktop extends StatelessWidget {
  final AppInfo app;

  const _AppsSwiperDesktop({required this.app});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),

      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.04),
        borderRadius: BorderRadius.circular(30.0),
      ),
      // width: app.imgList.length * 300,
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
