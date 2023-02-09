import 'package:flutter/material.dart';

class HaederComponent extends StatelessWidget {
  const HaederComponent({
    Key? key,
    required this.width,
    required this.handleOpenDrawer
  }) : super(key: key);

  final double width;
  final Function() handleOpenDrawer;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: (handleOpenDrawer),
          child: Icon(Icons.menu, color: Colors.black)),
        Image.asset(
          "assets/images/a1.png",
          width: width / 4.0,
        ),
        Icon(Icons.search_sharp, color: Colors.black,),
      ],
    );
  }
}
