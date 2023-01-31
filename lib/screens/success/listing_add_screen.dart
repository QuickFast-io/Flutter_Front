import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/screens/side_menu/profile_menu_screen.dart';

class Listing_Add_Screen extends StatefulWidget {
  const Listing_Add_Screen({Key? key}) : super(key: key);

  @override
  State<Listing_Add_Screen> createState() => _Listing_Add_ScreenState();
}

class _Listing_Add_ScreenState extends State<Listing_Add_Screen> {

  bool tour = false;
  bool property = false;

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

        actions: [
          InkWell(
            onTap: (){
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                  ProfileMenu_Screen()), (Route<dynamic> route) => false);
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(1.0, 0.0, 15.0, 0.0),
              child:  Center(
                child: Text(
                  AppLocalizations.instance.text("loc_cancel"),
                  style: CustomWidget(context: context).CustomSizedTextStyle(
                      14.0, AppColors.blackColor, FontWeight.w400, 'FontRegular'),
                ),
              ),
            ),
          )
        ],
      ),
      body:Container(
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
                    AppLocalizations.instance.text("loc_listing_add"),
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        24.0,
                        AppColors.blackColor,
                        FontWeight.w500,
                        'FontRegular'),
                  ),

                  SizedBox(
                    height: 6.0,
                  ),

                  Text(
                    AppLocalizations.instance.text("loc_let_us_help"),
                    style: CustomWidget(context: context)
                        .CustomSizedTextStyle(
                        14.0,
                        AppColors.hintColor,
                        FontWeight.w400,
                        'FontRegular'),
                  ),

                  Container(
                    height: 40.0,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Theme(data: ThemeData(
                        primarySwatch: Colors.yellow,
                        unselectedWidgetColor: Colors.grey, // Your color
                      ),
                          child: Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            value: property,
                            onChanged: (bool? value) {
                              setState(() {
                                property = value!;
                              });
                            },
                          )),
                      Flexible(child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.instance.text("loc_list_your_property"),
                              style: CustomWidget(context: context)
                                  .CustomSizedTextStyle(
                                  15.0,
                                  Colors.black,
                                  FontWeight.w500,
                                  'FontRegular'),

                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppLocalizations.instance.text("loc_get_seen"),
                                  style: CustomWidget(context: context)
                                      .CustomSizedTextStyle(
                                      12.0,
                                      AppColors.hintColor,
                                      FontWeight.w500,
                                      'FontRegular'),

                                ),
                                Text(
                                  "\$ 1000 extra",
                                  style: CustomWidget(context: context)
                                      .CustomSizedTextStyle(
                                      12.0,
                                      Colors.black,
                                      FontWeight.w500,
                                      'FontRegular'),

                                )
                              ],
                            )
                          ],
                        ),
                      ),)

                      //Checkbox
                    ],
                  ),

                  SizedBox(
                    height: 15.0,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Theme(data: ThemeData(
                        primarySwatch: Colors.yellow,
                        unselectedWidgetColor: Colors.grey, // Your color
                      ),
                          child: Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            value: tour,
                            onChanged: (bool? value) {
                              setState(() {
                                tour = value!;
                              });
                            },
                          )),

                      Flexible(child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.instance.text("loc_virtual_tour"),
                              style: CustomWidget(context: context)
                                  .CustomSizedTextStyle(
                                  15.0,
                                  Colors.black,
                                  FontWeight.w500,
                                  'FontRegular'),

                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppLocalizations.instance.text("loc_create_digital"),
                                  style: CustomWidget(context: context)
                                      .CustomSizedTextStyle(
                                      12.0,
                                      AppColors.hintColor,
                                      FontWeight.w500,
                                      'FontRegular'),

                                ),
                                Text(
                                  "\$ 5000 extra",
                                  style: CustomWidget(context: context)
                                      .CustomSizedTextStyle(
                                      12.0,
                                      Colors.black,
                                      FontWeight.w500,
                                      'FontRegular'),

                                )
                              ],
                            )
                          ],
                        ),
                      ),)


                      //Checkbox
                    ],
                  ),

                ],
              ),
            ),

            SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: (){
                setState(() {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             Success_Property_Screen()));
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
                        .CustomSizedTextStyle(
                        16.0,
                        AppColors.blackColor,
                        FontWeight.w400,
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
