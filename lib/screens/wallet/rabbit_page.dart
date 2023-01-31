import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/screens/home/congrats_page.dart';
import 'package:rabbit/screens/home/pass_phrase.dart';
import 'package:rabbit/screens/wallet/set_pin.dart';
import 'package:rabbit/screens/wallet/notification_screen.dart';

class RabbitScreen extends StatefulWidget {
  const RabbitScreen({Key? key}) : super(key: key);

  @override
  State<RabbitScreen> createState() => _RabbitScreenState();
}

class _RabbitScreenState extends State<RabbitScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: AppColors.whiteColor,
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 25.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/others/logo.png",
                    color: AppColors.appColor,
                    height: 30,),
                  SizedBox(width: 5.0,),
                  Text(
                    AppLocalizations.instance.text("loc_app_name"),
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        25.0, AppColors.blackColor, FontWeight.w400, 'FontRegular'),
                  ),
                ],
              ),
              SizedBox(height: 25.0,),
              Text(
                AppLocalizations.instance.text("loc_welcome"),
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    32.0,
                    AppColors.blackColor,
                    FontWeight.w500,
                    'FontRegular'),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35.0,left: 35.0,top: 15.0),
                child: Text(
                  AppLocalizations.instance.text("loc_welcome_description"),
                  style: CustomWidget(context: context)
                      .CustomSizedTextStyle(
                      16.0,
                      AppColors.greyColor,
                      FontWeight.w400,
                      'FontRegular'),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

          // SvgPicture.asset("assets/menu/wallet.svg",width:250.0,height: 250.0,),
          Image.asset("assets/menu/wallet.png",height: 300.0,),

          InkWell(
            onTap: (){
              setState(() {

                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            Notification_Screen()));
              });
            },
            child: Container(
              height: 45.0,
              decoration: BoxDecoration(
                color: AppColors.appColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Center(
                child: Text(
                  AppLocalizations.instance.text("loc_get_started"),
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
    );
  }
}
