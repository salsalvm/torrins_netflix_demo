import 'package:flutter/material.dart';
import 'package:torrins_test/res/colors.dart';
import 'package:torrins_test/view/home/screen_home.dart';

class BottomNavItems extends StatelessWidget {
  const BottomNavItems({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangerNavigator,
      
      builder: (context, value, _) => BottomNavigationBar(
        elevation: 0,
        
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kWhite,
        backgroundColor: kBlack.withOpacity(.3),
        currentIndex: indexChangerNavigator.value,
        onTap: (int currentIndex) {
          indexChangerNavigator.value = currentIndex;
        },
        items: List.generate(3, (i) => _bottomBuilderItem(i)),
      ),
    );
  }

//bottom navigation bar item styles
  BottomNavigationBarItem _bottomBuilderItem(int i) {
    //bottom bar item list name and icons
    final List<Icon> inActiveIcons = <Icon>[
      const Icon(
        Icons.home_outlined),
      const Icon(Icons.my_library_add_outlined),
      const Icon(Icons.person_2_outlined),
   
    ];
    final List<Icon> activIcons = <Icon>[
      const Icon(Icons.home),
      const Icon(Icons.my_library_add_sharp),
      const Icon(Icons.person),

    ];
    final List<String> labelList = <String>[
      'Home',
      'Newss & Hot',
      'My Netflix',
  
    ];

    return BottomNavigationBarItem(
      icon: inActiveIcons[i],
      label: labelList[i],
      activeIcon: activIcons[i],
    );
  }
}
