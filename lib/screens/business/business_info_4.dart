import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';

class BusinessInfo_Screen4 extends StatefulWidget {
  const BusinessInfo_Screen4({Key? key}) : super(key: key);

  @override
  State<BusinessInfo_Screen4> createState() => _BusinessInfo_Screen4State();
}

class _BusinessInfo_Screen4State extends State<BusinessInfo_Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
          color: AppColors.whiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 25.0,),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 15.0,),
                    Image.asset("assets/others/logo.png",
                      color: AppColors.appColor,
                      height: 70,),
                    SizedBox(height: 25.0,),

                    Text(

                        AppLocalizations.instance.text("loc_we_need"),
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(
                          32.0,
                          AppColors.blackColor,
                          FontWeight.w500,
                          'FontRegular'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(padding: EdgeInsets.only(left:40.0, right:40.0,),
                        child: Text(

                      AppLocalizations.instance.text("loc_we_need_txt"),
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(
                          14.0,
                          AppColors.greyColor,
                          FontWeight.w400,
                          'FontRegular'),
                      textAlign: TextAlign.center,
                    ),),
                    SizedBox(
                      height: 25.0,
                    ),
                  ],

                ),
              ),
              SizedBox(height: 15.0,),
              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.of(context).popUntil((route) => route.isFirst);
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
