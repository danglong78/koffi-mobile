import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:koffi/page/page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          TweenAnimationBuilder(
            tween: Tween<double>(begin: 1.5, end: 1.0),
            duration: Duration(seconds: 2),
            curve: Curves.bounceOut,
            builder: (_, double size, __) => Positioned(
                top: height * 0.44,
                child: SvgPicture.asset(
                  "assets/svg/logo_splash.svg",
                  width: width * 0.573 * size,
                  height: height * 0.09 * size,
                )),
          ),
          Positioned(
            left: width * 0.22,
            top: height * 0.17,
            child: Container(
              height: height * 0.466,
              width: width * 0.419,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xFF1EAB8D).withOpacity(1.0 * 0.39),
                    Color(0xFF24AD90).withOpacity(0.97 * 0.39),
                    Color(0xFF37B499).withOpacity(0.89 * 0.39),
                    Color(0xFF55BFA9).withOpacity(0.76 * 0.39),
                    Color(0xFF7FCFBE).withOpacity(0.57 * 0.39),
                    Color(0xFFB6E4DA).withOpacity(0.32 * 0.39),
                    Color(0xFFF8FCFB).withOpacity(0.03 * 0.39),
                    Color(0xFFFFFFFF).withOpacity(0.0)
                  ],
                      stops: [
                    0.0,
                    0.13,
                    0.29,
                    0.45,
                    0.63,
                    0.8,
                    0.98,
                    1.0,
                  ])),
              transform: Matrix4.rotationZ(0.52272611),
            ),
          ),
          Positioned(
            right: width * 0.115,
            top: height * 0.2,
            child: Container(
              height: height * 0.4651,
              width: width * 0.266,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xFF1EAB8D).withOpacity(1.0 * 0.39),
                    Color(0xFF24AD90).withOpacity(0.97 * 0.39),
                    Color(0xFF37B499).withOpacity(0.89 * 0.39),
                    Color(0xFF55BFA9).withOpacity(0.76 * 0.39),
                    Color(0xFF7FCFBE).withOpacity(0.57 * 0.39),
                    Color(0xFFB6E4DA).withOpacity(0.32 * 0.39),
                    Color(0xFFF8FCFB).withOpacity(0.03 * 0.39),
                    Color(0xFFFFFFFF).withOpacity(0.0)
                  ],
                      stops: [
                    0.0,
                    0.13,
                    0.29,
                    0.45,
                    0.63,
                    0.8,
                    0.98,
                    1.0,
                  ])),
              transform: Matrix4.rotationZ(0.52272611),
            ),
          ),
          Positioned(
            right: width * 0.66,
            top: height * 0.608,
            child: Container(
              height: height * 0.466,
              width: width * 0.419,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xFF1EAB8D).withOpacity(1.0 * 0.39),
                    Color(0xFF24AD90).withOpacity(0.97 * 0.39),
                    Color(0xFF37B499).withOpacity(0.89 * 0.39),
                    Color(0xFF55BFA9).withOpacity(0.76 * 0.39),
                    Color(0xFF7FCFBE).withOpacity(0.57 * 0.39),
                    Color(0xFFB6E4DA).withOpacity(0.32 * 0.39),
                    Color(0xFFF8FCFB).withOpacity(0.03 * 0.39),
                    Color(0xFFFFFFFF).withOpacity(0.0)
                  ],
                      stops: [
                    0.0,
                    0.13,
                    0.29,
                    0.45,
                    0.63,
                    0.8,
                    0.98,
                    1.0,
                  ])),
              transform: Matrix4.rotationZ(0.52272611),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration:Duration(seconds: 2));
    Future.delayed(Duration(seconds: 3), () {

      Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 500),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.linear);
              var offsetAnimation =
                  Tween<Offset>(end: Offset.zero, begin: Offset(1.0, 0.0))
                      .animate(animation);
              return SlideTransition(position: offsetAnimation, child: child);
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return LoginPage();
            },
          ),
          );
    });

    super.initState();
  }
}
