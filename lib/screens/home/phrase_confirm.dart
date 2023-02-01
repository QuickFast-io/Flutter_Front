import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/screens/basic/home_screen.dart';

class PhraseConfirm extends StatefulWidget {
  const PhraseConfirm({Key? key}) : super(key: key);

  @override
  State<PhraseConfirm> createState() => _PhraseConfirmState();
}

class _PhraseConfirmState extends State<PhraseConfirm> {
  bool value = false;
  bool value1 = false;
  bool value2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10.0),
        child: Stack(
          children: [
            phraseUI(),
          ],
        ),
      ),
    );
  }

  Widget phraseUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 25.0),
            SvgPicture.asset("assets/menu/backup.svg",
                height: 99.0),
            SizedBox(height: 41.0),
            Text(
              AppLocalizations.instance.text("loc_phrase_verified"),
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  32.0, AppColors.blackColor, FontWeight.w500, 'FontRegular'),
            ),
            SizedBox(height: 44.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: this.value,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  checkColor: Colors.white,
                  activeColor: AppColors.appColor,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ), //Checkbox//SizedBox
                Flexible(
                    child: Container(
                  margin: EdgeInsets.only(top: 15.0),
                  child: Text(
                    AppLocalizations.instance.text("loc_phrase_desc"),
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        14.0,
                        AppColors.blackColor,
                        FontWeight.w400,
                        'FontRegular'),
                    textAlign: TextAlign.start,
                  ),
                )), //Text
              ], //<Widget>[]
            ), //R

            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: this.value1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  checkColor: Colors.white,
                  activeColor: AppColors.appColor,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value1 = value!;
                    });
                  },
                ), //Checkbox//SizedBox
                Flexible(
                    child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Text(
                    AppLocalizations.instance.text("loc_phrase_desc1"),
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        14.0,
                        AppColors.blackColor,
                        FontWeight.w400,
                        'FontRegular'),
                    textAlign: TextAlign.start,
                  ),
                )), //Text
              ], //<Widget>[]
            ), //Ro
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: this.value2,
                  checkColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  activeColor: AppColors.appColor,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value2 = value!;
                    });
                  },
                ), //Checkbox//SizedBox
                Flexible(
                    child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Text(
                    AppLocalizations.instance.text("loc_phrase_desc2"),
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        14.0,
                        AppColors.blackColor,
                        FontWeight.w400,
                        'FontRegular'),
                    textAlign: TextAlign.start,
                  ),
                )), //Text
              ], //<Widget>[]
            ), //Row
          ],
        ),
        InkWell(
          onTap: () {
            if (value && value1) {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Home_Screen(
                          index: -1,
                        )));
              });
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                "Please accept terms of passphrase",
                style: CustomWidget(context: context).CustomSizedTextStyle(
                    14.0, AppColors.whiteColor, FontWeight.w600, 'FontRegular'),
              )));
            }
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              top: 15.0,
              bottom: 15.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: AppColors.appColor,
            ),
            child: Text(
              AppLocalizations.instance.text("loc_agree_continue"),
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  16.0, AppColors.blackColor, FontWeight.w400, 'FontRegular'),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
