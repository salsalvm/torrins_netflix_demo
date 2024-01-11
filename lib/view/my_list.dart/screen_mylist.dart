import 'package:flutter/material.dart';
import 'package:torrins_test/res/colors.dart';
import 'package:torrins_test/res/constants.dart';
import 'package:torrins_test/res/styles.dart';
import 'package:torrins_test/view/widgets/app_bar_widget.dart';
import 'package:torrins_test/view/widgets/main_title_card.dart';

class ScreenMyList extends StatelessWidget {
  const ScreenMyList({super.key, required this.clicked});
  final bool clicked;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Visibility(
            visible: clicked,
            child: const AppBarWidget(
              title: 'NETFLIX',
            ),
          )),
      body: SafeArea(
        child: Container(
          color: kBlack,
          child: ListView(
            children: [
              kHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  kWidth3,
                  CircleAvatar(
                    backgroundColor: kBlue,
                    child: const Icon(
                      Icons.download,
                      color: kWhite,
                    ),
                  ),
                  kWidth,
                  Text(
                    "Download",
                    style: KStyle.title(color: kWhite),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: kWhite,
                    size: 16,
                  ),
                  kWidth
                ],
              ),

                 const  MainTitleCard(title: '',myList: true,height: 150,width: 220,),
             const  MainTitleCard(title: 'New Release',myList: true),
              const MainTitleCard(title: 'Released in the Past year'),
             const  MainTitleCard(title: 'Us Movie',myList: true)
            ],
          ),
        ),
      ),
    );
  }
}
