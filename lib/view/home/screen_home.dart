import 'package:flutter/material.dart';
import 'package:torrins_test/res/colors.dart';
import 'package:torrins_test/res/styles.dart';
import 'package:torrins_test/view/home/widgets/bottom_bar_items.dart';
import 'package:torrins_test/view/home/widgets/home_page.dart';
import 'package:torrins_test/view/my_list.dart/screen_mylist.dart';


ValueNotifier<int> indexChangerNavigator = ValueNotifier<int>(0);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangerNavigator,
      builder: (context, value, child) => Scaffold(
        backgroundColor: kBlack,
        body: SafeArea(
          child: Builder(
            builder: (BuildContext context) {
              switch (indexChangerNavigator.value) {
                case 0:
                 return const HomePage();
                case 1:
                 return Center(child: SizedBox(child: Text("News and",style: KStyle.title(color: kWhite),),));
                case 2:
                  return  const ScreenMyList(clicked: true,);
                default:
                  return Container();
              }
            },
          ),
        ),
        bottomNavigationBar: const BottomNavItems(),
      ),
    );
  }
}
