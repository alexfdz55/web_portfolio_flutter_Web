import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'package:web_portfolio/app/data/models/models/Project.dart';
import 'package:web_portfolio/app/routes/app_pages.dart';
import 'package:web_portfolio/app/shared/constant.dart';
import 'package:web_portfolio/app/shared/responsive/responsive.dart';

class AppInfoCard2 extends StatelessWidget {
  final AppInfo project;

  const AppInfoCard2({required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
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

class AppInfoCard extends StatefulWidget {
  final AppInfo app;
  const AppInfoCard({required this.app});

  @override
  _AppInfoCardState createState() => _AppInfoCardState();
}

class _AppInfoCardState extends State<AppInfoCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: MouseRegion(
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
          child: Stack(
            children: [
              FadeInImage(
                placeholder: AssetImage('assets/loading.gif'),
                image: NetworkImage(widget.app.namImg),
              ),
              if (isHover)
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 200,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Center(
                      child: Text(
                        'Ver detalles',
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20.0),
          ),
          hoverDecoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
      onTap: () => Get.toNamed(Routes.INFO, arguments: widget.app),
    );
  }
}

// class _TarjetaImagen extends StatelessWidget {
//   final Article noticia;

//   const _TarjetaImagen(this.noticia);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10),
//       child: ClipRRect(
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
//         child: Container(
//             child: (noticia.urlToImage != null)
//                 ? FadeInImage(
//                     placeholder: AssetImage('assets/giphy.gif'),
//                     image: NetworkImage(noticia.urlToImage!))
//                 : Image(
//                     image: AssetImage('assets/no-image.png'),
//                   )),
//       ),
//     );
//   }
// }

// class _AppCardAnimated extends StatelessWidget {
//   final AppInfo project;

//   const _AppCardAnimated({required this.project});

//   @override
//   Widget build(BuildContext context) {
//     return HoverAnimatedContainer(
//       cursor: SystemMouseCursors.click,
//       width: 250,
//       height: 500,
//       hoverWidth: 300,
//       hoverHeight: 600,
//       child: Stack(
//         children: [
//           Image.asset(
//             "assets/apps/${project.namImg}",
//             fit: BoxFit.contain,
//           ),
//           Align(
//             alignment: Alignment.center,
//             child: Container(
//               width: 200,
//               height: 80,
//               decoration: BoxDecoration(
//                   color: Colors.black.withOpacity(0.6),
//                   borderRadius: BorderRadius.circular(20.0)),
//               child: Center(
//                 child: Text(
//                   'Ver detalles',
//                   style: TextStyle(
//                       color: primaryColor,
//                       fontSize: 30,
//                       fontWeight: FontWeight.w700),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//       decoration: BoxDecoration(
//         color: Colors.transparent,
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       hoverDecoration: BoxDecoration(
//           color: Colors.white.withOpacity(0.1),
//           borderRadius: BorderRadius.circular(20.0)),
//     );
//   }
// }
