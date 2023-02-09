import 'package:flutter/material.dart';
import 'package:project/constants.dart';

import '../../../models/fakedata.dart';

class Tags extends StatelessWidget {
  const Tags({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
      child: SizedBox(
        height: 60,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tagsList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  // width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                      shape: BoxShape.rectangle,
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                          colors:
                              constantsGradientColor.secondaryGradient)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 8, 16),
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/hashtag.png')),
                        SizedBox(width: 16,),
                        Text(
                          tagsList[index].title,
                          style: Theme.of(context).textTheme.bodyText1,
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
