import 'package:flutter/material.dart';
import 'package:torrins_test/res/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final double textSize;
  final String title;
  final double iconSize;
   final Color color;
  const CustomButtonWidget(
      {Key? key,
      required this.icon, this.color=kTransperent,
      required this.title,
      this.iconSize = 30,
      this.textSize = 18})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: color,
      child: Column(
        
        children: [
          Icon(
            icon,
            color: kWhite,
            size: iconSize,
          ),
          Text(
            title,
            style: TextStyle(fontSize: textSize,color: kWhite),
          ),

           
            SizedBox(width: 100,
            child: Padding(
              padding: const  EdgeInsets.only(top: 3),
              child: Divider(color:title=="My List"? kError:kBlack,height: 2),
            ))
        ],
      ),
    );
  }
}
