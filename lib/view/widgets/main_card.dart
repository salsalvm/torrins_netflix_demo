import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:torrins_test/model/movie_data.dart';
import 'package:torrins_test/res/app_urls.dart';
import 'package:torrins_test/res/asset/home_images.dart';
import 'package:torrins_test/res/colors.dart';
import 'package:torrins_test/res/components/custom_button.dart';
import 'package:torrins_test/res/constants.dart';
import 'package:torrins_test/res/styles.dart';
import 'package:torrins_test/view/details/screen_details.dart';

class MainCard extends StatelessWidget {
  final Movie item;
  final int index;
    final bool myList;
       final double width;
    final double height;

  const MainCard({
    Key? key,required this.item,required this.index, this.myList=false,this.height=220,this.width=120
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        GestureDetector(
          onTap: () => Get.to(ScreenDetails(item:item)),
          child: Container(
            margin:const EdgeInsets.symmetric(horizontal: 10),
            width: width,
            height: height,
            
            decoration: BoxDecoration(
              borderRadius: kradius5,
              
            ),
            child:
              FadeInImage.assetNetwork(
                
                image:Apis().imageAppendUrl+item.posterPath ,
                                placeholder: Assets.splash,
                                placeholderFit: BoxFit.cover,
                                fit: BoxFit.fill,
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
        ),
// NetworkImage(
//              Apis().imageAppendUrl+item.posterPath,
//                 ),
        Visibility(
          visible:index%3==0?true:myList ?false:false ,
          child: Padding(
            padding: const EdgeInsets.only(top: 135),
            child: CustomButton(widget:const Text("Recently Added",style: TextStyle(fontSize: 11,color: kWhite),) , onTap: (){},color: kError,buttonWidth: 110,buttonHeight:20,radius: 5,),
          ),
         
        ),
         Visibility(visible: myList,
           child: Padding(
             padding: const EdgeInsets.only(top: 150),
             child: CustomButton(buttonHeight: 65,buttonWidth: width,radius: 3,
             onTap: () {},
              color: kBlackLight,
              widget: Row(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [Visibility(visible: width==220 ?false:true,
                  child: const Icon(Icons.share,color: kWhite,size: 24,)),kWidth,Text(width==220?"U/A | 1 Episode | 248.2mb":"Share  ",style: KStyle.title(color: kWhite),)],)),
           ),
         )

      ],
    );
  }
}
