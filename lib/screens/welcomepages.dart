import 'package:app_music/themes/colors.dart';
import 'package:app_music/widgets/app_large_text.dart';
import 'package:app_music/widgets/responsive_button.dart';
import 'package:flutter/material.dart';
import 'package:app_music/widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List assets = [
    "rau1.png",
    "rau2.png",
    "rau33.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: assets.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/"+ assets[index]),fit: BoxFit.fitWidth
                )
              ),
              child: Container(
                margin: const EdgeInsets.only(top:650,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      AppLargeText(text: "WELCOME  "),
                      AppText(text: "VEGEHOUSE"),
                      SizedBox(height: 20,),
                      Container(
                        width: 250,
                        child: AppText(
                          text: "Are you looking to lose weight by adding more vegetables?",
                          color: AppColors.textColor2,
                          size: 14,
                        ),
                      ),
                      SizedBox(height: 40,),
                      ResponsiveButton()
                    ]),
                    Column(
                      children: List.generate(3, (indexDots){
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 6,
                          height: index==indexDots?30:6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index==indexDots?AppColors.mainColor:AppColors.mainColor.withOpacity(0.25)
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
