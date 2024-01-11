import 'package:flutter/material.dart';
import 'package:torrins_test/res/asset/home_images.dart';
import 'package:torrins_test/res/colors.dart';
import 'package:torrins_test/utils/routes/routes_name.dart';

late Size size;
String logged = 'login success';
Object? userToken;

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    checkUserLogin(context);
    return Scaffold(
      backgroundColor: kBlack,
      body: Center(
        child: Container(
          height: size.height * .6,
          width: size.width * .8,
          decoration: const BoxDecoration(
            color: kWhite,
            image: DecorationImage(
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
              image: AssetImage(Assets.splash),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> checkUserLogin(context) async {

      await Future.delayed(const Duration(seconds: 2));
      Navigator.pushReplacementNamed(context, KRoutesName.home);
    
  }
}
