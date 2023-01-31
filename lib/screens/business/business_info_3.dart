import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/screens/business/business_info_4.dart';

class BusinessInfo_Screen3 extends StatefulWidget {
  const BusinessInfo_Screen3({Key? key}) : super(key: key);

  @override
  State<BusinessInfo_Screen3> createState() => _BusinessInfo_Screen3State();
}

class _BusinessInfo_Screen3State extends State<BusinessInfo_Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(
            color: AppColors.appColor,
            width: 2.0,
          ),
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
        title: Text(
          AppLocalizations.instance.text("loc_business_ans"),
          style: CustomWidget(context: context).CustomSizedTextStyle(
              18.0, AppColors.blackColor2, FontWeight.w500, 'FontRegular'),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: (){
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(1.0, 0.0, 15.0, 0.0),
              child:  Center(
                child: Text(
                  AppLocalizations.instance.text("loc_cancel"),
                  style: CustomWidget(context: context).CustomSizedTextStyle(
                      14.0, AppColors.blackColor2, FontWeight.w400, 'FontRegular'),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
          color: AppColors.whiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.0,),

                      Text(
                        AppLocalizations.instance.text("loc_bus_head3"),
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            24.0,
                            AppColors.blackColor2,
                            FontWeight.w500,
                            'FontRegular'),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        AppLocalizations.instance.text("loc_bus_txt3"),
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            14.0,
                            AppColors.smalltext2Color,
                            FontWeight.w400,
                            'FontRegular'),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Form(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                      AppLocalizations.instance.text("loc_art_incorp"),
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                AppColors.blackColor,
                                FontWeight.w500,
                                'FontRegular'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),

                          InkWell(
                            onTap: () async {
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.fromLTRB(10, 50.0, 10, 40.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors
                                        .hintColor
                                        .withOpacity(0.2),
                                    width: 1.0),
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.transparent,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/menu/upload.png',
                                    height: 22.0,
                                    width: 22.0,
                                    color: AppColors.blackColor,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    AppLocalizations.instance.text("loc_click_upload"),
                                    textAlign: TextAlign.center,
                                    style: CustomWidget(context: context)
                                        .CustomSizedTextStyle(
                                        16.0,
                                        AppColors.blackColor,
                                        FontWeight.w500,
                                        'FontRegular'),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    AppLocalizations.instance.text("loc_txt_png"),
                                    textAlign: TextAlign.center,
                                    style: CustomWidget(context: context)
                                        .CustomSizedTextStyle(
                                        14.0,
                                        AppColors.greyColor,
                                        FontWeight.w400,
                                        'FontRegular'),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20.0,
                          ),

                          Text(

                              AppLocalizations.instance.text("loc_tax_txt"),
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                AppColors.blackColor,
                                FontWeight.w500,
                                'FontRegular'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),

                          InkWell(
                            onTap: () async {
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.fromLTRB(10, 50.0, 10, 40.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors
                                        .hintColor
                                        .withOpacity(0.2),
                                    width: 1.0),
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.transparent,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/menu/upload.png',
                                    height: 22.0,
                                    width: 22.0,
                                    color: AppColors.blackColor,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    AppLocalizations.instance.text("loc_click_upload"),
                                    textAlign: TextAlign.center,
                                    style: CustomWidget(context: context)
                                        .CustomSizedTextStyle(
                                        16.0,
                                        AppColors.blackColor,
                                        FontWeight.w500,
                                        'FontRegular'),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    AppLocalizations.instance.text("loc_txt_png"),
                                    textAlign: TextAlign.center,
                                    style: CustomWidget(context: context)
                                        .CustomSizedTextStyle(
                                        14.0,
                                        AppColors.greyColor,
                                        FontWeight.w400,
                                        'FontRegular'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),

                          Text(

                              AppLocalizations.instance.text("loc_other_doc"),
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                AppColors.blackColor,
                                FontWeight.w500,
                                'FontRegular'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),

                          InkWell(
                            onTap: () async {
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.fromLTRB(10, 50.0, 10, 40.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors
                                        .hintColor
                                        .withOpacity(0.2),
                                    width: 1.0),
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.transparent,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/menu/upload.png',
                                    height: 22.0,
                                    width: 22.0,
                                    color: AppColors.blackColor,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    AppLocalizations.instance.text("loc_click_upload"),
                                    textAlign: TextAlign.center,
                                    style: CustomWidget(context: context)
                                        .CustomSizedTextStyle(
                                        16.0,
                                        AppColors.blackColor,
                                        FontWeight.w500,
                                        'FontRegular'),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    AppLocalizations.instance.text("loc_txt_png"),
                                    textAlign: TextAlign.center,
                                    style: CustomWidget(context: context)
                                        .CustomSizedTextStyle(
                                        14.0,
                                        AppColors.greyColor,
                                        FontWeight.w400,
                                        'FontRegular'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                    ],

                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                BusinessInfo_Screen4()));
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
                      AppLocalizations.instance.text("loc_confirm"),
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(
                          16.0,
                          AppColors.blackColor,
                          FontWeight.w500,
                          'FontRegular'),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10.0,),
            ],

          ),
        ),
      ),
    );
  }
}
