import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/constants.dart';
import 'package:project/models/fakedata.dart';
import 'package:project/components/bottom-tab-navigator.dart';
import 'package:project/screens/auth/welcome-screen.dart';
import 'package:project/screens/home/components/heading-title.dart';
import 'package:project/screens/home/components/last-posts.dart';
import 'package:project/screens/home/home-screen.dart';
import 'package:project/screens/profile/profile-screen.dart';
import 'package:get/get.dart';

import '../../components/header-component.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    List<Widget> screenPages = [];

    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Drawer(
          backgroundColor: constantsColor.whiteColor,
          child: ListView(
            children: [
              DrawerHeader(child: Image.asset('assets/images/a1.png', scale: 3,)),
              ListTile(
                title: Text('پروفایل کاربری', style: Theme.of(context).textTheme.headline2,),
              ),
              Divider(color: constantsColor.greyColor,),
              ListTile(
                title: Text('درباره تک بلاگ', style: Theme.of(context).textTheme.headline2,),
              ),
              Divider(color: constantsColor.greyColor,),
              ListTile(
                title: Text('خروج از حساب کاربری', style: Theme.of(context).textTheme.headline2,),
              ),
              Divider(color: constantsColor.greyColor,),
            ],
          ),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: constantsColor.whiteColor,
          title: HaederComponent(
            width: width,
            handleOpenDrawer: () {
              _key.currentState!.openDrawer();
            },
          ),
        ),
        body: Stack(
          children: [
            Positioned.fill(
                child: IndexedStack(
              index: selectedIndex,
              children: [
                Home(),
                Profile(),
              ],
            )),
            // Home(),
            BottomTabNavigator(
              height: height,
              handleChange: (int value) {
                setState(() {
                  selectedIndex = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
