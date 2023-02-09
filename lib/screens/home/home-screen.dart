import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/constants.dart';
import 'package:project/models/fakedata.dart';
import 'package:project/components/bottom-tab-navigator.dart';
import 'package:project/screens/home/components/heading-title.dart';
import 'package:project/screens/home/components/last-posts.dart';

import '../../components/header-component.dart';
import 'components/tags-component.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Poster
            PosterMethod(width, height, context),
            SizedBox(
              height: 24,
            ),
            // Tags
            Tags(width: width),
            // Last Posts
            SizedBox(
              height: 24,
            ),
            Column(
              children: [
                HeadingTitle(
                  width: width,
                  height: height,
                  title: 'مشاهده داغ ترین نوشته ها',
                  icon: 'assets/images/pen.png',
                ),
                LastPosts(width: width, height: height)
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              children: [
                HeadingTitle(
                    width: width,
                    height: height,
                    title: 'مشاهده پادکست ها',
                    icon: 'assets/images/microphone.png'),
                LastPosts(width: width, height: height)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Stack PosterMethod(double width, double height, BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width / 1.19,
          height: height / 4.20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: AssetImage('assets/images/programming.png'),
                  fit: BoxFit.cover)),
          foregroundDecoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: constantsGradientColor.homePostCoverGradient)),
        ),
        Positioned(
          bottom: 8,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: Text(
                      homePagePosterData['writer'],
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Text(
                    homePagePosterData['views'].toString() + ' بازدید',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    homePagePosterData['description'],
                    style: Theme.of(context).textTheme.bodyText2,
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
