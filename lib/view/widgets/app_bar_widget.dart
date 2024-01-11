import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:torrins_test/res/colors.dart';
import 'package:torrins_test/res/constants.dart';
import 'package:torrins_test/res/styles.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBlack.withOpacity(.9),
      child: Padding(
        padding: const EdgeInsets.only(top: 7,bottom: 7),
        child: Row(
          children: [
            kWidth,
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.network(
                                  "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png",
                                  width: 30,
                                  height: 30,
                                ),
                  ),
            kWidth,
            Text(
              title,
              style: KStyle.heading(color: kWhite,size: 26),
            ),
            const Spacer(),
               
            const  Icon(
              CupertinoIcons.search,
              size: 30,
              color: Colors.white,
            ),
             kWidth,
            const Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            ),
             kWidth,
        
      
          ],
        ),
      ),
    );
  }
}
