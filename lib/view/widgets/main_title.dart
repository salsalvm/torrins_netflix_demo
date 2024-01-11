import 'package:flutter/material.dart';
import 'package:torrins_test/res/colors.dart';
import 'package:torrins_test/res/styles.dart';

class MainTitle extends StatelessWidget {
  final String title;
  const MainTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0),
      child: Text(
        title,
        style: KStyle.heading(color: kWhite),
      ),
    );
  }
}
