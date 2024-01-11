import 'package:flutter/material.dart';
import 'package:torrins_test/model/movie_data.dart';
import 'package:torrins_test/res/app_urls.dart';
import 'package:torrins_test/res/colors.dart';
import 'package:torrins_test/res/components/custom_button.dart';
import 'package:torrins_test/res/components/rich_text.dart';
import 'package:torrins_test/res/constants.dart';
import 'package:torrins_test/res/styles.dart';
import 'package:torrins_test/view/home/widgets/custom_button_widget.dart';
import 'package:torrins_test/view/widgets/main_title_card.dart';

class ScreenDetails extends StatelessWidget {
  const ScreenDetails({super.key,required this.item});

final Movie item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: SafeArea(
          child: ListView(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: kradius3,
                  image:  DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      Apis().imageAppendUrl+item.backdropPath,
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                     
                    backgroundColor: kBlack.withOpacity(.3),
                child: IconButton(onPressed: ()=>Navigator.pop(context), icon:const Icon(Icons.close),color: kWhite,))
            ],
          ),
          kHeight,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${item.title}",
                  style: KStyle.title(color: kWhite),
                ),
                kHeight5,
                const KRichText(
                  firstText: "98% Match",
                  secondText: "2013  u/1* 2h 18m",
                  firstColor: kSuccess,
                  color: kWhite,
                ),
                 kHeight5,
                CustomButton(
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.play_arrow,
                        color: kBlack,
                      ),
                      Text(
                        " Play   ",
                        style: KStyle.content(color: kBlack,size: 12),
                      ),
                    ],
                  ),
                  color: kWhite,
                  radius: 3,
                  onTap: () {},
                  buttonHeight: 30,
                ),
                CustomButton(
                  widget: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.download,
                        color: kBlack,
                      ),
                      Text(
                        " Download",
                        style: TextStyle(fontSize: 12, color: kBlack),
                      ),
                    ],
                  ),
                  color: kGrey.withOpacity(.9),
                  radius: 3,
                  onTap: () {},
                  buttonHeight: 30,
                ),
                kHeight,
                Text(
                  maxLines: 3,
                  "${item.originalTitle}",
                  style: KStyle.content(color: kWhite, size: 10),
                ),
                kHeight,
                Text(
                  maxLines: 3,
                  "${item.overview}",
                  style: KStyle.content(color: kGrey, size: 10),
                ),
                kHeight15,
                const  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     CustomButtonWidget(
                      
                      icon: Icons.add,
                      title: "My List",
                      iconSize: 24,
                      textSize: 12,
                    ),
                    CustomButtonWidget(
                      icon: Icons.thumb_up_alt,
                      title: "Rate",
                      iconSize: 24,
                      textSize: 12,
                    ),
                    CustomButtonWidget(
                      icon: Icons.share_sharp,
                      title: "Share",
                      iconSize: 24,
                      textSize: 12,
                    )
                  ],
                ),
                kHeight,
              const MainTitleCard(title: 'More Like This',change: true,),
             const MainTitleCard(title: ''),

              ],
            ),
          ),
        ],
      ),),
    );
  }
}
