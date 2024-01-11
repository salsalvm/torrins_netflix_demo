import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:torrins_test/res/constants.dart';
import 'package:torrins_test/view/widgets/main_card.dart';
import 'package:torrins_test/view/widgets/main_title.dart';
import 'package:torrins_test/viewmodel/home_constroller.dart';



class MainTitleCard extends StatelessWidget {
  final String title;
    final bool myList;
    final double width;
    final double height;
    final bool change ;

  const MainTitleCard({this.change=false,
    required this.title, this.myList=false, this.width=120,this.height=220,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: title==""?false:true, child: kHeight15),
        
        Visibility(
             visible: title==""?false:true,
          child: MainTitle(title: title)),
        kHeight5,
        LimitedBox(
          maxHeight: 190,
          child: GetBuilder<HomeController>(

       init: HomeController(),
            builder: (HomeController controller) =>
                 ListView(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                         change?controller.popularMovi.length: controller.topMovi.length,
                          (index) =>  MainCard(index: index,myList: myList,height: height,width: width,
                              item: change?controller.popularMovi[index]: controller.topMovi[index]),
                        ),
                      ),
          ),
        ),
      ],
    );
  }
}

