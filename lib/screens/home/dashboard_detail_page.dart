import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_switch.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';

class DashboardDetail extends StatefulWidget {
  final String path;
  const DashboardDetail({Key? key,
  required this.path
  }) : super(key: key);

  @override
  State<DashboardDetail> createState() => _DashboardDetailState();
}

class _DashboardDetailState extends State<DashboardDetail> {
  bool switchButton=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
               "Atlanta GA",
              style: CustomWidget(context: context).CustomSizedTextStyle(
                  18.0, AppColors.blackColor, FontWeight.w400, 'FontRegular'),
              textAlign: TextAlign.center,
            ),
            Icon(
              Icons.expand_more_outlined,
              color: Colors.black,
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        actions: [
          Padding(
              padding:
              EdgeInsets.only(left: 5.0, bottom: 5.0, top: 5.0, right: 10.0),
              child: IconButton(
                onPressed: () {

                },
               icon:Icon(
                 Icons.search_outlined,
                 color: Colors.black,
               ),
              )),
        ],
      ),
      body: Stack(
        children: [
            detailUI(),
        ],
      ),
    );
  }

  Widget detailUI(){
   return Container(
     width:MediaQuery.of(context).size.width,
     height:MediaQuery.of(context).size.height,
     color: Colors.white,
     padding: EdgeInsets.only(left: 10.0,right: 10.0),
     child: Column(
       children: [
         Expanded(
             flex: 1,
             child:Container(
               width: MediaQuery.of(context).size.width,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   CustomSwitch(
                       value: switchButton,
                       activeColor: AppColors.switchbackColor,
                       activeTextColor: AppColors.darkblackColor,
                       icon: Image.asset("assets/others/list.png",height: 24.0,width: 24.0) ,
                       activeText: AppLocalizations.instance.text("loc_for_sale"),
                       inactiveColor: AppColors.blackColor,
                       inactiveTextColor: AppColors.blackColor,
                       inactiveText: AppLocalizations.instance.text("loc_map"),
                       inActiveIcon: Image.asset("assets/others/location.png",height: 24.0,width: 24.0) ,
                       onChanged: (test) {
                         setState(() {
                           switchButton = test;
                         });
                       }),
                 ],
               ),
             )
         ),

         Expanded(
           flex: 7,
           child: switchButton?Container(
             width:MediaQuery.of(context).size.width,
             height:MediaQuery.of(context).size.height,
             child: SingleChildScrollView(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Align(
                         child: Text(
                           AppLocalizations.instance.text("loc_detaile_txt"),
                           style: CustomWidget(context: context)
                               .CustomSizedTextStyle(
                               14.0,
                               AppColors.smalltext1Color,
                               FontWeight.w400,
                               'FontRegular'),
                           textAlign: TextAlign.start,
                         ),
                         alignment: Alignment.topLeft,
                       ),
                       SizedBox(height: 20.0,),
                       Stack(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width,
                             height: 250.0,
                             decoration:BoxDecoration(
                               image:DecorationImage(image: AssetImage(widget.path),
                                   fit: BoxFit.fill),
                               borderRadius: BorderRadius.circular(15.0),
                             ),
                             padding: EdgeInsets.all(5.0),
                           ),
                           Align(
                             alignment: Alignment.topRight,
                             child: Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5.0),
                                 color: AppColors.appColor,
                               ),
                               padding: EdgeInsets.only(top: 8.0,bottom: 8.0,left: 15.0,right: 15.0),
                               margin: EdgeInsets.only(top: 8.0,bottom: 8.0,left: 15.0,right: 15.0),
                               child: Text(
                                 AppLocalizations.instance.text("loc_for_sale2"),
                                 style: CustomWidget(context: context)
                                     .CustomSizedTextStyle(
                                     13.0,
                                     AppColors.darkblackColor,
                                     FontWeight.w400,
                                     'FontRegular'),
                                 textAlign: TextAlign.center,
                               ),
                             ),
                           ),
                         ],
                       ),
                       SizedBox(height: 10.0),
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               Image.asset("assets/others/bed.png",height: 24.0,width: 24.0),
                               SizedBox(width: 5.0,),
                               Text(
                                 AppLocalizations.instance.text("loc_sml_txt1"),
                                 style: CustomWidget(context: context)
                                     .CustomSizedTextStyle(
                                     12.0,
                                     AppColors.blackColor2,
                                     FontWeight.w400,
                                     'FontRegular'),
                                 textAlign: TextAlign.center,
                               ),
                             ],
                           ),
                           Row(
                             children: [
                               Image.asset("assets/others/Kitchen.png",height: 24.0,width: 24.0),
                               SizedBox(width: 5.0,),
                               Text(
                                 AppLocalizations.instance.text("loc_sml_txt2"),
                                 style: CustomWidget(context: context)
                                     .CustomSizedTextStyle(
                                     14.0,
                                     AppColors.blackColor2,
                                     FontWeight.w400,
                                     'FontRegular'),
                                 textAlign: TextAlign.center,
                               ),
                             ],
                           ),
                           Row(
                             children: [
                               Image.asset("assets/others/Bathtub.png",height: 24.0,width: 24.0),
                               SizedBox(width: 5.0,),
                               Text(
                                 AppLocalizations.instance.text("loc_sml_txt3"),
                                 style: CustomWidget(context: context)
                                     .CustomSizedTextStyle(
                                     14.0,
                                     AppColors.blackColor2,
                                     FontWeight.w400,
                                     'FontRegular'),
                                 textAlign: TextAlign.center,
                               ),
                             ],
                           ),
                         ],
                       ),
                     ],
                   ),
                   SizedBox(height: 25.0,),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         AppLocalizations.instance.text("loc_detaile_txt_dis"),
                         style: CustomWidget(context: context)
                             .CustomSizedTextStyle(
                             26.0,
                             AppColors.blackColor2,
                             FontWeight.w500,
                             'FontRegular'),
                       ),
                       SizedBox(height: 10.0),
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           SvgPicture.asset("assets/others/locations.svg",height: 15.0,),
                           SizedBox(width: 5.0,),
                           Text(
                             AppLocalizations.instance.text("loc_detaile_txt_address"),
                             style: CustomWidget(context: context)
                                 .CustomSizedTextStyle(
                                 16.0,
                                 AppColors.blackColor2,
                                 FontWeight.w400,
                                 'FontRegular'),
                             textAlign: TextAlign.start,
                           ),
                         ],
                       ),

                     ],
                   ),
                   SizedBox(height: 30.0,),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text(
                         AppLocalizations.instance.text("loc_detaile_cost"),
                         style: CustomWidget(context: context)
                             .CustomSizedTextStyle(
                             12.0,
                             AppColors.blackColor2,
                             FontWeight.w400,
                             'FontRegular'),
                         textAlign: TextAlign.center,
                       ),
                       Text(
                         "\$"+ AppLocalizations.instance.text("loc_detaile_amount"),
                         style: CustomWidget(context: context)
                             .CustomSizedTextStyle(
                             18.0,
                             AppColors.blackColor2,
                             FontWeight.w600,
                             'FontRegular'),
                         textAlign: TextAlign.center,
                       ),
                     ],
                   ),
                   SizedBox(height: 20.0,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         AppLocalizations.instance.text("loc_detaile_txt2"),
                         style: CustomWidget(context: context)
                             .CustomSizedTextStyle(
                             16.0,
                             AppColors.blackColor2,
                             FontWeight.w500,
                             'FontRegular'),
                         textAlign: TextAlign.start,
                       ),
                       SizedBox(height: 15.0,),
                       Text(
                         AppLocalizations.instance.text("loc_detaile_txt_dis_1"),
                         style: CustomWidget(context: context)
                             .CustomSizedTextStyle(
                             16.0,
                             AppColors.smalltext1Color,
                             FontWeight.w400,
                             'FontRegular'),
                         textAlign: TextAlign.start,
                       ),
                       SizedBox(height: 15.0,),
                       Text(
                         AppLocalizations.instance.text("loc_detaile_txt_dis_2"),
                         style: CustomWidget(context: context)
                             .CustomSizedTextStyle(
                             16.0,
                             AppColors.smalltext1Color,
                             FontWeight.w400,
                             'FontRegular'),
                         textAlign: TextAlign.start,
                       ),
                       SizedBox(height: 15.0,),
                       Text(
                         AppLocalizations.instance.text("loc_detaile_txt_dis_3"),
                         style: CustomWidget(context: context)
                             .CustomSizedTextStyle(
                             16.0,
                             AppColors.smalltext1Color,
                             FontWeight.w400,
                             'FontRegular'),
                         textAlign: TextAlign.start,
                       ),
                       SizedBox(height: 15.0,),
                       Text(
                         AppLocalizations.instance.text("loc_detaile_txt_dis_4"),
                         style: CustomWidget(context: context)
                             .CustomSizedTextStyle(
                             16.0,
                             AppColors.smalltext1Color,
                             FontWeight.w400,
                             'FontRegular'),
                         textAlign: TextAlign.start,
                       ),
                       SizedBox(height: 15.0,),
                       Text(
                         AppLocalizations.instance.text("loc_detaile_txt_dis_5"),
                         style: CustomWidget(context: context)
                             .CustomSizedTextStyle(
                             16.0,
                             AppColors.smalltext1Color,
                             FontWeight.w400,
                             'FontRegular'),
                         textAlign: TextAlign.start,
                       ),

                     ],
                   ),
                   SizedBox(height: 20.0,),

                 ],
               ),
             ),
           ):Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 height: 200,
               ),
               SvgPicture.asset("assets/menu/box.svg",
                 height: 100.0,
               ),

               SizedBox(
                 height: 20.0,
               ),

               Padding(padding: EdgeInsets.only(left: 40.0, right: 40.0) ,child: Text(
                 AppLocalizations.instance.text("loc_dashboard_detailes_txt"),
                 textAlign: TextAlign.center,
                 style: CustomWidget(context: context)
                     .CustomSizedTextStyle(
                     18.0,
                     AppColors.blackColor2,
                     FontWeight.w400,
                     'FontRegular'),
               ),),

             ],
           ),
         )
       ],
     ),
   );
  }




}
