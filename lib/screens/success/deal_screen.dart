import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';

class Success_Deal_Screen extends StatefulWidget {
  const Success_Deal_Screen({Key? key}) : super(key: key);

  @override
  State<Success_Deal_Screen> createState() => _Success_Deal_ScreenState();
}

class _Success_Deal_ScreenState extends State<Success_Deal_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.15,
        // leading: Padding(
        //     padding:
        //     EdgeInsets.only(left: 2.0, bottom: 5.0, top: 5.0, right: 2.0),
        //     child: InkWell(
        //       onTap: () {
        //         Navigator.pop(context);
        //       },
        //       child: Icon(
        //         Icons.arrow_back_rounded,
        //         color: AppColors.blackColor,
        //       ),
        //     )
        // ),
        centerTitle: true,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/others/logo.png",
              color: AppColors.appColor,
              height: 22,),
            SizedBox(width: 6.0,),
            Text(
             AppLocalizations.instance.text("loc_app_name"),
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  20.0, AppColors.blackColor, FontWeight.w400, 'FontRegular'),
            ),
          ],
        ),
        //
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.whiteColor,
        padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment. spaceAround,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment. center,
                children: [
                  Image.asset("assets/menu/succcesss.png",height: 160.0),
                  SizedBox(height: 24.0,),
                  Text(
                   AppLocalizations.instance.text("loc_congratsl"),
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        32.0,
                        AppColors.blackColor,
                        FontWeight.w500,
                        'FontRegular'),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    AppLocalizations.instance.text("loc_deal_text"),
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        16.0,
                        AppColors.blackColor,
                        FontWeight.w400,
                        'FontRegular'),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                });
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(5.0, 12.0, 5.0, 12.0),
                decoration: BoxDecoration(
                  color: AppColors.appColor,
                  // border: Border.all(
                  //     color: AppColors.blackColor
                  // ),
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Center(
                  child: Text(
                   AppLocalizations.instance.text("loc_con"),
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        16.0,
                        AppColors.blackColor,
                        FontWeight.w400,
                        'FontRegular'),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
