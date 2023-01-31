import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/screens/property/property_info_8.dart';
import 'package:rabbit/screens/side_menu/profile_menu_screen.dart';

class PropertyInfo_Screen7 extends StatefulWidget {
  const PropertyInfo_Screen7({Key? key}) : super(key: key);

  @override
  State<PropertyInfo_Screen7> createState() => _PropertyInfo_Screen7State();
}

class _PropertyInfo_Screen7State extends State<PropertyInfo_Screen7> {

  String? accept;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        shape: Border(
            bottom: BorderSide(
                color: AppColors.appColor,
                width: 2.0
            )
        ),
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        leading: Padding(
            padding:
            EdgeInsets.only(left: 9.0, bottom: 5.0, top: 5.0, right: 2.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: AppColors.blackColor,

              ),
            )),
        // title: Text(
        //   "Profile".toUpperCase(),
        //   style: CustomWidget(context: context).CustomSizedTextStyle(
        //       16.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
        // ),
        actions: [
          InkWell(
            onTap: (){
             Navigator.of(context).popUntil((route) => route.isFirst);
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(1.0, 0.0, 15.0, 0.0),
              child:  Center(
                child: Text(
                  "Cancel",
                  style: CustomWidget(context: context).CustomSizedTextStyle(
                      15.0, AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
        color: AppColors.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 15.0,),

                  Text(
                    "Do you have a survey document?",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        16.0,
                        AppColors.blackColor2,
                        FontWeight.w400,
                        'FontRegular'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ListTile(
                    title: Text(
                      AppLocalizations.instance.text("loc_yes"),
                      textAlign: TextAlign.start,
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(16.0, AppColors.blackColor2,
                          FontWeight.w400, 'FontRegular'),
                    ),
                    leading: Transform.scale(
                      scale: 1.5,
                      child: Radio(
                        value: AppLocalizations.instance.text("loc_yes"),
                        groupValue: accept,
                        onChanged: (value) {
                          setState(() {
                            accept = value.toString();
                          });
                        },
                        activeColor: AppColors.appColor,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      AppLocalizations.instance.text("loc_no"),
                      textAlign: TextAlign.start,
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(16.0, AppColors.blackColor2,
                          FontWeight.w400, 'FontRegular'),
                    ),
                    leading: Transform.scale(
                      scale: 1.5,
                      child: Radio(
                        value: AppLocalizations.instance.text("loc_no"),
                        groupValue: accept,
                        onChanged: (value) {
                          setState(() {
                            accept = value.toString();
                          });
                        },
                        activeColor: AppColors.appColor,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 25.0,
                  ),
                ],
              ),
            ),
            Container(
              height: 50.0,
            ),
            InkWell(
              onTap: (){
                setState(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>
                              PropertyInfo_Screen8()));
                });
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 15.0),
                margin: EdgeInsets.only(bottom: 25.0),
                decoration: BoxDecoration(
                  color: AppColors.appColor,
                  // border: Border.all(
                  //     color: AppColors.blackColor
                  // ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    "Continue",
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        14.0,
                        AppColors.blackColor,
                        FontWeight.w700,
                        'FontRegular'),
                  ),
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
