import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/screens/side_menu/offer_success.dart';

class Updated_Terms_Screen extends StatefulWidget {
  const Updated_Terms_Screen({Key? key}) : super(key: key);

  @override
  State<Updated_Terms_Screen> createState() => _Updated_Terms_ScreenState();
}

class _Updated_Terms_ScreenState extends State<Updated_Terms_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
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
            )
        ),
        centerTitle: true,
        title: Text(
            AppLocalizations.instance.text("loc_make_offer"),
          style: CustomWidget(context: context).CustomSizedTextStyle(
              18.0, AppColors.blackColor, FontWeight.w400, 'FontRegular'),
        ),
        //
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.whiteColor,
        padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                height: 35.0,
                                width: 35.0,
                                padding : EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                                decoration: BoxDecoration(
                                  color: Color(0xFF12E3A4),
                                  borderRadius: BorderRadius.circular(7.0),
                                  // image: DecorationImage(
                                  //   image: AssetImage("assets/images/group.png",),
                                  //   fit: BoxFit.cover,
                                  // ),
                                ),

                                child: Center(
                                  child: Text("A",
                                    style: CustomWidget(context: context)
                                        .CustomSizedTextStyle(
                                        9.0,
                                        AppColors.blackColor,
                                        FontWeight.w500,
                                        'FontRegular'),
                                  ),
                                ),
                              ),
                              SizedBox(width: 15.0,),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Assune",
                                    textAlign: TextAlign.start,
                                    style: CustomWidget(context: context)
                                        .CustomSizedTextStyle(
                                        14.0,
                                        AppColors.blackColor,
                                        FontWeight.w500,
                                        'FontRegular'),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(width: 10.0,),
                                  Row(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width* 0.22,
                                        child: Text(
                                          "09xzvdfgh1235hjuf4",
                                          textAlign: TextAlign.start,
                                          style: CustomWidget(context: context)
                                              .CustomSizedTextStyle(
                                              14.0,
                                              AppColors.hintColor,
                                              FontWeight.w400,
                                              'FontRegular'),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      SizedBox(width: 8.0,),
                                      Icon(Icons.copy,
                                        color: Colors.black,
                                        size: 12.0,
                                      )
                                    ],
                                  )

                                ],
                              ),
                            ],
                          ),
                        ),
                        Flexible(child: SvgPicture.asset("assets/menu/Chat.svg",
                          height: 20.0,),)
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey.withOpacity(0.1))
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.instance.text("loc_sellers_price"),
                          textAlign: TextAlign.start,
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              14.0,
                              AppColors.blackColor,
                              FontWeight.w400,
                              'FontRegular'),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(width: 10.0,),

                        Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.add_circle_outline,
                                color: AppColors.hintColor,
                                size: 20.0,
                              ),
                              SizedBox(width: 10.0,),
                              Text(
                                "\$1,340,000",
                                textAlign: TextAlign.start,
                                style: CustomWidget(context: context)
                                    .CustomSizedTextStyle(
                                    14.0,
                                    AppColors.blackColor,
                                    FontWeight.w400,
                                    'FontRegular'),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(width: 10.0,),
                              Icon(
                                Icons.remove_circle_outline,
                                color: AppColors.hintColor,
                                size: 20.0,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 15.0,),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey.withOpacity(0.1))
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.instance.text("loc_earnest_money"),
                          textAlign: TextAlign.start,
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              14.0,
                              AppColors.blackColor,
                              FontWeight.w400,
                              'FontRegular'),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(width: 10.0,),

                        Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.add_circle_outline,
                                color: AppColors.hintColor,
                                size: 20.0,
                              ),
                              SizedBox(width: 10.0,),
                              Text(
                                "\$13,000",
                                textAlign: TextAlign.start,
                                style: CustomWidget(context: context)
                                    .CustomSizedTextStyle(
                                    14.0,
                                    AppColors.blackColor,
                                    FontWeight.w400,
                                    'FontRegular'),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(width: 10.0,),
                              Icon(
                                Icons.remove_circle_outline,
                                color: AppColors.hintColor,
                                size: 20.0,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 15.0,),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey.withOpacity(0.1))
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                         AppLocalizations.instance.text("loc_total"),
                          textAlign: TextAlign.start,
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              14.0,
                              AppColors.blackColor,
                              FontWeight.w400,
                              'FontRegular'),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(width: 10.0,),

                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.appColor,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          padding: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                          child: Text(
                            "\$1,345,000",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                14.0,
                                AppColors.blackColor,
                                FontWeight.w500,
                                'FontRegular'),
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),

            SizedBox(height: 15.0,),

            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>
                              Offer_Success_Screen()));
                });
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(5.0, 12.0, 5.0, 12.0),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  border: Border.all(
                      color: AppColors.blackColor,width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Center(
                  child: Text(
                    AppLocalizations.instance.text("loc_make_offer"),
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

          ],
        ),
      ),
    );
  }
}
