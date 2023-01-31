import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/screens/business/business_info_1.dart';
import 'package:rabbit/screens/individual/individual_screen.dart';

class BusinessInfo_Screen extends StatefulWidget {
  const BusinessInfo_Screen({Key? key}) : super(key: key);

  @override
  State<BusinessInfo_Screen> createState() => _BusinessInfo_ScreenState();
}

class _BusinessInfo_ScreenState extends State<BusinessInfo_Screen> {
  String? accept;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        // shape: Border(
        //     bottom: BorderSide(
        //         color: AppColors.appColor,
        //         width: 2.0
        //     )
        // ),
        backgroundColor: AppColors.whiteColor,
        elevation: 0.15,
        leading: Padding(
            padding:
                EdgeInsets.only(left: 2.0, bottom: 5.0, top: 5.0, right: 2.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: AppColors.blackColor,
              ),
            )),
        centerTitle: true,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/others/logo.png",
              color: AppColors.appColor,
              height: 22,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              AppLocalizations.instance.text("loc_app_name"),
              style: CustomWidget(context: context).CustomSizedTextStyle(20.0,
                  AppColors.darkblackColor, FontWeight.w400, 'FontRegular'),
            ),
          ],
        ),
        //
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(0.0, 5.0, 15.0, 0.0),
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
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Text(
                      AppLocalizations.instance.text("loc_bus_question"),
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(16.0, AppColors.blackColor2,
                              FontWeight.w400, 'FontRegular'),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ListTile(
                    title: Text(
                      AppLocalizations.instance.text("loc_individual_ans"),
                      textAlign: TextAlign.start,
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(16.0, AppColors.blackColor2,
                              FontWeight.w400, 'FontRegular'),
                    ),
                    leading: Transform.scale(
                      scale: 1.5,
                      child: Radio(
                        value: AppLocalizations.instance
                            .text("loc_individual_ans"),
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
                      AppLocalizations.instance.text("loc_business_ans"),
                      textAlign: TextAlign.start,
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(16.0, Colors.black,
                              FontWeight.w400, 'FontRegular'),
                    ),
                    leading: Transform.scale(
                      scale: 1.5,
                      child: Radio(
                        value:
                            AppLocalizations.instance.text("loc_business_ans"),
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
              padding: EdgeInsets.only(left: 20.0,right: 20.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        print(accept);
                        if (accept.toString().toLowerCase() == "individual") {
                          setState(() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Individual_Screen()));
                          });
                        } else if (accept.toString().toLowerCase() == "business") {
                          setState(() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => BusinessInfo_Screen1()));
                          });
                        } else {}
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 15.0),
                      decoration: BoxDecoration(
                        color: AppColors.appColor,
                        // border: Border.all(
                        //     color: AppColors.blackColor
                        // ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Text(
                          AppLocalizations.instance.text("loc_continue"),
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(16.0, AppColors.blackColor,
                                  FontWeight.w500, 'FontRegular'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
