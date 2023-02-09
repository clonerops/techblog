import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/constants.dart';
import 'package:project/models/fakedata.dart';
import 'package:project/screens/profile/components/divider.dart';
import 'package:project/screens/profile/components/text-button.dart';

import '../../components/header-component.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          // Profile Image
          SizedBox(
            height: 36,
          ),
          Image(
            image: AssetImage('assets/images/profile.png'),
            height: height / 7.27,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/pen.png'),
                height: height / 37,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text('ویرایش عکس پروفایل',
                      style: Theme.of(context).textTheme.headline1))
            ],
          ),
          SizedBox(
            height: 36,
          ),
          Text(
            'ابوالفضل معصومی',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'clonerops@gmail.com',
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(
            height: 36,
          ),
          DividerComponent(width: width),
          TextButtonComponent(title: 'مقالات مورد علاقه من'),
          DividerComponent(width: width),
          TextButtonComponent(title: 'پادکست های مورد علاقه من'),
          DividerComponent(width: width),
          TextButtonComponent(title: 'خروج از حساب کاربری'),
        ],
      ),
    );
  }
}

