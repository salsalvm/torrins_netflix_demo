import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:torrins_test/res/colors.dart';
import 'package:torrins_test/res/constants.dart';
import 'package:torrins_test/view/home/widgets/background_card.dart';
import 'package:torrins_test/view/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: ((notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          }),
          child: Stack(
            children: [
              ListView(
                children: const [
                  BackgroundCard(),
                  MainTitleCard(title: 'Trending Now',change: true,),
                  MainTitleCard(title: 'Popular on Netflix'),
                  MainTitleCard(title: 'New Release',change: true,),
                  MainTitleCard(title: 'Released in the Past year'),
                  MainTitleCard(title: 'Us Movie',change: true,)
                ],
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
                      height: 70,
                      width: double.infinity,
                      color: kBlack.withOpacity(0.3),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "For Explorer",
                              style: TextStyle(
                                  color: kWhite,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.cast,
                              size: 30,
                              color: Colors.white,
                            ),
                            kWidth,
                            Icon(
                              CupertinoIcons.search,
                              color: kWhite,
                            ),
                          ],
                        ),
                      ),
                    )
                  : kHeight,
            ],
          ),
        );
      },
    );
  }
}
