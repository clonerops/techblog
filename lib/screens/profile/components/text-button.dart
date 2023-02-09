import 'package:flutter/material.dart';

class TextButtonComponent extends StatelessWidget {
  const TextButtonComponent({
    Key? key,
    required this.title
  }) : super(key: key);

    final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: SizedBox(
        height: 48,
        child: Center(
          child: Text(
          title,
          style: Theme.of(context).textTheme.headline2,
        ),
        )
      ),
    );
  }
}
