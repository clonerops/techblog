import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/screens/auth/welcome-screen.dart';

class BottomTabNavigator extends StatelessWidget {
  const BottomTabNavigator({
    Key? key,
    required this.height,
    required this.handleChange,
  }) : super(key: key);

  final double height;
  final Function(int) handleChange;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: height / 10,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: constantsGradientColor.backgroundBottomTabGradient,
                begin: Alignment.centerRight,
                end: Alignment.centerLeft)),
        child: Padding(
          padding:
              const EdgeInsets.only(right: 16, left: 16, top: 8, bottom: 8),
          child: Container(
            height: height / 12,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                    colors: constantsGradientColor.primaryGradient)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: (() => handleChange(0)),
                  icon: ImageIcon(AssetImage('assets/images/icon.png')),
                  color: constantsColor.whiteColor,
                ),
                IconButton(
                  onPressed: (){
                    Navigator.of(context)
                    .push(MaterialPageRoute(builder: (builder) => WelcomeAuth()));
                  },
                  icon: ImageIcon(AssetImage('assets/images/w.png')),
                  color: constantsColor.whiteColor,
                ),
                IconButton(
                  onPressed: (() => handleChange(1)),
                  icon: ImageIcon(AssetImage('assets/images/user.png')),
                  color: constantsColor.whiteColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
