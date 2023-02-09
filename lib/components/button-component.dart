import 'package:flutter/material.dart';
import 'package:project/constants.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({Key? key, 
  required this.height, 
  required this.width, 
  required this.title,
  required this.handlSubmit})
      : super(key: key);

  final double height;
  final double width;
  final String title;
  final Function() handlSubmit;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return constantsColor.secondaryColor;
          }
          return constantsColor.primaryColor;
        }), textStyle: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return const TextStyle(fontSize: 24);
          }
          return const TextStyle(fontSize: 18);
        })),
        onPressed: (handlSubmit),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
          child: Text(
           title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ));
  }
}
