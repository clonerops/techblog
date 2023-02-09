
import 'package:flutter/material.dart';
import 'package:project/constants.dart';

import '../../../models/fakedata.dart';

class LastPosts extends StatelessWidget {
  const LastPosts({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: postsList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    width: width / 1.66,
                    height: height / 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(16)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/programming.png'),
                                    fit: BoxFit.fill)),
                            foregroundDecoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(16)),
                                gradient: LinearGradient(
                                    begin:
                                        Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: constantsGradientColor
                                        .homePostCoverGradient)),
                          ),
                          Positioned(
                            bottom: 16,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  postsList[index].writer,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1,
                                ),
                                Text(
                                  postsList[index].views +
                                      ' بازدید',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width / 2,
                    child: Expanded(
                      child: Text(
                        postsList[index].description,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .headline2,
                            maxLines: 3,
                      ),
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
