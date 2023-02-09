import 'package:flutter/material.dart';

class HeadingTitle extends StatelessWidget {
  const HeadingTitle({
    Key? key,
    required this.width,
    required this.height,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final double width;
  final double height;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
      child: Row(
        children: [
          Image.asset(
            icon,
            width: width / 19.69,
            height: height / 37.69,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          )
        ],
      ),
    );
  }
}
