import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ImageAndSpinKit extends StatelessWidget {
  const ImageAndSpinKit({
    Key? key,
    required this.spinkit,
  }) : super(key: key);

  final SpinKitFadingCube spinkit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/a1.png",
          height: 64,
        ),
        const SizedBox(height: 24,),
        spinkit,
      ],
    );
  }
}
