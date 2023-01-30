import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';

class BuyProperty extends StatefulWidget {
  const BuyProperty({Key? key}) : super(key: key);

  @override
  State<BuyProperty> createState() => _BuyPropertyState();
}

class _BuyPropertyState extends State<BuyProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
         iconTheme: IconThemeData(
           color: Colors.black, //change your color here
         ),
         backgroundColor: AppColors.whiteColor,
         elevation: 0.5,
         title: Text(
           AppLocalizations.instance.text("loc_buy_title"),
           style: CustomWidget(context: context).CustomSizedTextStyle(
               18.0, AppColors.blackColor, FontWeight.w400, 'FontRegular'),
         ),
         centerTitle: true,
       ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            buyUI(),
          ],
        ),
      ),
    );
  }

  Widget buyUI(){
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250.0,
                  decoration:BoxDecoration(
                    image:DecorationImage(image: AssetImage("assets/others/house.png"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: EdgeInsets.all(5.0),
                ),
                SizedBox(height: 10.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/others/bed.png",height: 17.0,width: 27.0),
                        SizedBox(width: 5.0,),
                        Text(
                          "2 bedrooms",
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              13.0,
                              Color(0xFF262626),
                              FontWeight.w400,
                              'FontRegular'),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("assets/others/Kitchen.png",height: 17.0,width: 27.0),
                        SizedBox(width: 5.0,),
                        Text(
                          "2 Kitchen",
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              13.0,
                              Color(0xFF262626),
                              FontWeight.w400,
                              'FontRegular'),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("assets/others/Bathtub.png",height: 17.0,width: 27.0),
                        SizedBox(width: 5.0,),
                        Text(
                          "4000 Sq Ft",
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(
                              13.0,
                              Color(0xFF262626),
                              FontWeight.w400,
                              'FontRegular'),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Text(
                  "Exquisitely finished detached 6 \nBedroom mansion",
                  style: CustomWidget(context: context)
                      .CustomSizedTextStyle(
                      26.0,
                      AppColors.blackColor,
                      FontWeight.w500,
                      'FontRegular'),
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    SvgPicture.asset("assets/others/locationpin.svg",width: 10.17,height: 14.87,),
                    SizedBox(width: 6.0,),
                    Text(
                      "123 Happy Street Alpharetta",
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(
                          16.0,
                          AppColors.blackColor,
                          FontWeight.w400,
                          'FontRegular'),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0,left: 15.0,top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Cost : ",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                12.0,
                                Color(0xFF696969),
                                FontWeight.w400,
                                'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "\$ 8,560,000",
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                18.0,
                                Colors.black,
                                FontWeight.w600,
                                'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SvgPicture.asset("assets/others/chat.svg",height: 22.0,),
                    ],
                  ),
                ),
              ],
            ),

            Column(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                     /* Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) =>
                                  Wallet()));*/
                    });
                  },
                  child: Container(

                    padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
                    decoration: BoxDecoration(
                      color: AppColors.appColor,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Center(
                      child: Text(
                        AppLocalizations.instance.text("loc_buy_now"),
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
                InkWell(
                  onTap: (){
                    setState(() {
                      /*Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>
                              Home_Screen()));*/
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Color(0xFF171717), ),
                      borderRadius: BorderRadius.circular(15.0),
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

          ],
        ),
      ),
    );
  }

}
