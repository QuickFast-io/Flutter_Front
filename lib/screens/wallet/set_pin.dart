import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/screens/wallet/change_pin.dart';

class SetpinPage extends StatefulWidget {
  const SetpinPage({Key? key}) : super(key: key);

  @override
  State<SetpinPage> createState() => _SetpinPageState();
}

class _SetpinPageState extends State<SetpinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            setState(() {
                Navigator.pop(context);
            });
          },
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/others/logo.png",
              width: 25.0,
              height: 25.0,
              color: AppColors.appColor,
            ),
            SizedBox(width: 6.0,),
            Text(
              AppLocalizations.instance.text("loc_app_name"),
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  20.0, AppColors.blackColor, FontWeight.w400, 'FontRegular'),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10.0),
        child: Stack(
          children: [
            setpinUI(),
          ],
        ),
      ),
    );
  }

 Widget setpinUI(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 25.0),
              SvgPicture.asset("assets/others/pin.svg",height: 80.0,),
              SizedBox(height: 35.0),
              Text(
                AppLocalizations.instance.text("loc_set_pin_title"),
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    32.0,
                    AppColors.blackColor,
                    FontWeight.w500,
                    'FontRegular'),

              ),
              SizedBox(height: 10.0),
              Text(
                AppLocalizations.instance.text("loc_set_pin_description"),
                style: CustomWidget(context: context)
                    .CustomSizedTextStyle(
                    14.0,
                    AppColors.blackColor,
                    FontWeight.w400,
                    'FontRegular'),

              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChangePin()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              top: 15.0,
              bottom: 15.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              color: AppColors.appColor,
            ),
            child: Text(
              AppLocalizations.instance.text("loc_set_pin"),
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  16.0,
                  AppColors.blackColor,
                  FontWeight.w500,
                  'FontRegular'),
              textAlign: TextAlign.center,
            ),
          ),
        ),

      ],
    );
 }

}
