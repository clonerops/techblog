import 'package:flutter/material.dart';
import 'package:project/constants.dart';

class DividerComponent extends StatelessWidget {
  const DividerComponent({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: constantsColor.greyColor,
      indent: width / 6,
      endIndent: width / 6,
    );
  }
}
