import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:torrins_test/res/asset/home_images.dart';
import 'package:torrins_test/res/colors.dart';
import 'package:torrins_test/res/components/custom_button.dart';
import 'package:torrins_test/res/constants.dart';
import 'package:torrins_test/viewmodel/home_constroller.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: ((controller) => Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 480,
               child:
              FadeInImage.assetNetwork(
                image:kMainImage ,
                                placeholder: Assets.splash,
                                placeholderFit: BoxFit.fill,
                                imageErrorBuilder:
                                    (BuildContext context, Object error, _) =>
                                        Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(Assets.splash),
                                    ),
                                  ),
              ),
            ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                        widget: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.play_arrow,
                              color: kBlack,
                            ),
                            Text(
                              " Play",
                              style: TextStyle(fontSize: 11, color: kBlack),
                            ),
                          ],
                        ),
                        color: kWhite,
                        radius: 3,
                        onTap: () {},
                        buttonWidth: 130,
                        buttonHeight: 30,
                      ),
                      CustomButton(
                        widget: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: kBlack,
                            ),
                            Text(
                              " My List",
                              style: TextStyle(fontSize: 11, color: kBlack),
                            ),
                          ],
                        ),
                        color: kWhite,
                        radius: 3,
                        onTap: () {
                          
                        },
                        buttonWidth: 130,
                        buttonHeight: 30,
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
