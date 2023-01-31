import 'package:country_calling_code_picker/country.dart';
import 'package:country_calling_code_picker/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/country.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/common/textformfield_custom.dart';
import 'package:rabbit/screens/individual/individual_screen_2.dart';

class Individual_Screen extends StatefulWidget {
  const Individual_Screen({Key? key}) : super(key: key);

  @override
  State<Individual_Screen> createState() => _Individual_ScreenState();
}

class _Individual_ScreenState extends State<Individual_Screen> {

  Country? _selectedCountry;
  bool mobileVerify = true;
  bool countryB = false;


  FocusNode fnameFocus = FocusNode();
  FocusNode lnameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode mobileFocus = FocusNode();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initCountry();
  }

  void initCountry() async {
    final country = await getDefaultCountry(context);
    setState(() {
      _selectedCountry = country;
      countryB = true;

    });
  }


  void _onPressedShowBottomSheet() async {
    final country = await showCountryPickerSheets(
      context,
    );
    if (country != null) {
      setState(() {
        _selectedCountry = country;
      });
    }
  }
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
          AppLocalizations.instance.text("loc_individual_ans"),
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
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.0,),

                      Text(
                        AppLocalizations.instance.text("loc_indi_head"),
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
                        AppLocalizations.instance.text("loc_indi_txt1"),
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(
                            14.0,
                            AppColors.greyColor,
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
                            AppLocalizations.instance.text("loc_first_name"),
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
                          TextFormFieldCustom(
                            onEditComplete: () {
                              fnameFocus.unfocus();
                              FocusScope.of(context).requestFocus(lnameFocus);
                            },
                            radius: 20.0,
                            error: "Enter First Name",
                            textColor: AppColors.blackColor,
                            borderColor: AppColors.hintColor.withOpacity(0.2),
                            fillColor: AppColors.whiteColor,
                            hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                                15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                            textStyle: CustomWidget(context: context).CustomTextStyle(
                                AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                            textInputAction: TextInputAction.next,
                            focusNode: fnameFocus,
                            maxlines: 1,
                            text: '',
                            hintText: " ",
                            obscureText: false,
                            suffix: Container(
                              width: 0.0,
                            ),
                            textChanged: (value) {},
                            onChanged: () {},
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter First Name";
                              }
                              return null;
                            },
                            enabled: true,
                            textInputType: TextInputType.name,
                            controller: fnameController,
                          ),

                          SizedBox(
                            height: 20.0,
                          ),

                          Text(
                            AppLocalizations.instance.text("loc_second_name"),
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
                          TextFormFieldCustom(
                            onEditComplete: () {
                              lnameFocus.unfocus();
                              FocusScope.of(context).requestFocus(emailFocus);
                            },
                            radius: 20.0,
                            error: "Enter Last Name",
                            textColor: AppColors.blackColor,
                            borderColor: AppColors.hintColor.withOpacity(0.2),
                            fillColor: AppColors.whiteColor,
                            hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                                15.0, AppColors.hintColor, FontWeight.w500, 'FontRegular'),
                            textStyle: CustomWidget(context: context).CustomTextStyle(
                                AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                            textInputAction: TextInputAction.next,
                            focusNode: lnameFocus,
                            maxlines: 1,
                            text: '',
                            hintText: " ",
                            obscureText: false,
                            suffix: Container(
                              width: 0.0,
                            ),
                            textChanged: (value) {},
                            onChanged: () {},
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter Last Name";
                              }
                              return null;
                            },
                            enabled: true,
                            textInputType: TextInputType.name,
                            controller: lnameController,
                          ),
                          const SizedBox(
                            height: 25.0,
                          ),

                          Text(
                            AppLocalizations.instance.text("loc_email_add"),
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
                          TextFormFieldCustom(
                            onEditComplete: () {
                              emailFocus.unfocus();
                              // FocusScope.of(context).requestFocus(emailFocus);
                            },
                            radius: 20.0,
                            error: "Enter Email Address",
                            textColor: AppColors.blackColor,
                            borderColor: AppColors.hintColor.withOpacity(0.2),
                            fillColor: AppColors.whiteColor,
                            hintStyle: CustomWidget(context: context).CustomSizedTextStyle(
                                15.0, AppColors.hintColor.withOpacity(0.5), FontWeight.w500, 'FontRegular'),
                            textStyle: CustomWidget(context: context).CustomTextStyle(
                                AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                            textInputAction: TextInputAction.next,
                            focusNode: emailFocus,
                            maxlines: 1,
                            text: '',
                            hintText: "First, last name@",
                            obscureText: false,
                            suffix: Container(
                              width: 0.0,
                            ),
                            textChanged: (value) {},
                            onChanged: () {},
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter Email Address";
                              }
                              return null;
                            },
                            enabled: true,
                            textInputType: TextInputType.emailAddress,
                            controller: emailController,
                          ),
                          SizedBox(
                            height: 25.0,
                          ),

                          Text(
                            AppLocalizations.instance.text("loc_phone"),
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
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(color: AppColors.hintColor,width: 1.0)
                            ),
                            padding: EdgeInsets.only(left: 3.0,right: 3.0),
                            child:  Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10.0, top: 14.0, bottom: 14.0),

                                    child: Row(
                                      children: [
                                        InkWell(
                                          onTap: _onPressedShowBottomSheet,
                                          child: Row(
                                            children: [
                                              countryB
                                                  ?    Image.asset(
                                                _selectedCountry!.flag.toString(),
                                                package: "country_calling_code_picker",
                                                height: 15.0,
                                                width: 25.0,
                                              ):Container(width: 0.0,),
                                              Text(
                                                countryB
                                                    ? _selectedCountry!.callingCode.toString()
                                                    : "+1",
                                                style: CustomWidget(context: context)
                                                    .CustomTextStyle(
                                                    AppColors.blackColor,
                                                    FontWeight.normal,
                                                    'FontRegular'),
                                              ),
                                              const SizedBox(
                                                width: 3.0,
                                              ),
                                              const Icon(
                                                Icons.keyboard_arrow_down_outlined,
                                                size: 15.0,
                                                color: AppColors.blackColor,
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                      ],
                                    ),
                                width: 100,),

                               Container(
                                 child: Flexible(
                                   flex: 1,
                                   child:  TextFormField(
                                     controller: mobileController,
                                     focusNode: mobileFocus,

                                     enabled: true,
                                     textInputAction: TextInputAction.next,
                                     keyboardType: TextInputType.number,
                                     style: CustomWidget(context: context).CustomSizedTextStyle(
                                         20.0,
                                         AppColors.blackColor,
                                         FontWeight.w400,
                                         'FontRegular'),
                                     decoration: InputDecoration(
                                       contentPadding: const EdgeInsets.only(
                                           left: 12, right: 0, top: 2, bottom: 2),
                                       hintText: "Please enter Mobile",
                                       suffixIcon: Container(
                                         height: 0.0,
                                       ),

                                       border: InputBorder.none,
                                       enabledBorder: InputBorder.none,
                                       focusedBorder: InputBorder.none,
                                       errorBorder:InputBorder.none,

                                     ),
                                   ),
                                 ),
                               )],
                            ),
                          ),



                          SizedBox(
                            height: 20.0,
                          ),

                        ],
                      )),
                      Container(
                        height: 30.0,
                      ),
                    ],
                  ),
                ),
              ),


              Container(
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Individual_Screen2()));
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
                    SizedBox(height: 30.0,)
                  ],
                ),
              )
            ],

          ),
        ),
      ),
    );
  }

  // void _onPressedShowBottomSheet() async {
  //   final country = await showCountryPickerSheets(
  //     context,
  //   );
  //   if (country != null) {
  //     setState(() {
  //       _selectedCountry = country;
  //     });
  //   }
  // }
}
