import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/models/fakedata.dart';

class TagSingle extends StatelessWidget {
  const TagSingle({
    Key? key,
    required this.indexList,
  }) : super(key: key);

  final int indexList;

  @override
  Widget build(BuildContext context) {
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
                colors: constantsGradientColor.secondaryGradient)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 8, 16),
          child: Row(
            children: [
              Image(image: AssetImage('assets/images/hashtag.png')),
              SizedBox(
                width: 16,
              ),
              Text(
                tagsList[indexList].title,
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
