import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:project/constants.dart';
import 'package:project/screens/main-screen.dart';

import 'components/image-and-spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  // Execute Before Build Widgrt
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) => {
          Navigator.of(context).pushReplacement(PageRouteBuilder(
            pageBuilder: (_, __, ___) => Main(),
            transitionDuration: Duration(seconds: 2),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c),
          ))
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final spinkit = SpinKitFadingCube(
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: index.isEven
                ? constantsColor.primaryColor
                : constantsColor.secondaryColor,
          ),
        );
      },
    );

    return Scaffold(
      body: Center(
        child: ImageAndSpinKit(spinkit: spinkit),
      ),
    );
  }
}
