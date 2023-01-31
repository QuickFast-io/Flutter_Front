import 'package:flutter/material.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/screens/home/send_page.dart';

class Transfer extends StatefulWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  bool transfer=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            setState(() {
              if(transfer){
                transfer=false;
              }else{
                Navigator.pop(context);
              }

            });
          },
        ),
        title: Text(
          AppLocalizations.instance.text("loc_transfer"),
          style: CustomWidget(context: context).CustomSizedTextStyle(
              18.0, AppColors.blackColor, FontWeight.w400, 'FontRegular'),
          textAlign: TextAlign.center,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.history,color: Colors.black,size: 21.0,),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        color: Colors.white,
        child: Stack(
          children: [
           transferUI(),
          ],
        ),
      ),
    );
  }

  Widget transferUI(){
    return transfer?Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "200 ETH",
            style: CustomWidget(context: context).CustomSizedTextStyle(
                40.0, AppColors.blackColor, FontWeight.w400, 'FontRegular'),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0,),
          Text(
            "="+"\$234,568.45",
            style: CustomWidget(context: context).CustomSizedTextStyle(
                16.0, Color(0xFF737373), FontWeight.w400, 'FontRegular'),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 37.0,),
          Text(
            "Sent to",
            style: CustomWidget(context: context).CustomSizedTextStyle(
                15.0, AppColors.blackColor, FontWeight.w500, 'FontRegular'),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4.0,),
          Text(
            "0x9ba84A2275c45...ca6588235189FDE716",
            style: CustomWidget(context: context).CustomSizedTextStyle(
                14.0, Color(0xFFacacac), FontWeight.w500, 'FontRegular'),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ):
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50.0,),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "200 ETH",
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        40.0, AppColors.blackColor, FontWeight.w400, 'FontRegular'),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "="+"\$234,568.45",
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        16.0, Color(0xFF525252), FontWeight.w400, 'FontRegular'),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
              child: Column(
                children: [


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.instance.text("loc_asset"),
                        style: CustomWidget(context: context).CustomSizedTextStyle(
                            14.0, AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Etherum (ETH) - BEP20",
                        style: CustomWidget(context: context).CustomSizedTextStyle(
                            14.0, AppColors.hintColor2, FontWeight.w400, 'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.instance.text("loc_from"),
                        style: CustomWidget(context: context).CustomSizedTextStyle(
                            14.0, AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Rabbit Wallet (0x9ba8...f658)",
                        style: CustomWidget(context: context).CustomSizedTextStyle(
                            14.0,AppColors.hintColor2, FontWeight.w400, 'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.instance.text("loc_to"),
                        style: CustomWidget(context: context).CustomSizedTextStyle(
                            14.0, AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "0x9ba84A2275c45...ca6588235189FDE716",
                        style: CustomWidget(context: context).CustomSizedTextStyle(
                            14.0, AppColors.hintColor2, FontWeight.w400, 'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),




                  const  SizedBox(height: 30.0,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 0.5,
                    color:Color(0xFFacacac) ,
                  ),
                  const  SizedBox(height: 30.0,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.instance.text("loc_network_fee"),
                        style: CustomWidget(context: context).CustomSizedTextStyle(
                            14.0, AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "0.4566 ETH (\$5.35)",
                        style: CustomWidget(context: context).CustomSizedTextStyle(
                            14.0, Color(0xFF525252) , FontWeight.w400, 'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.instance.text("loc_total"),
                        style: CustomWidget(context: context).CustomSizedTextStyle(
                            14.0, AppColors.blackColor, FontWeight.w500, 'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "195 ETH (\$234,568.45)",
                        style: CustomWidget(context: context).CustomSizedTextStyle(
                            14.0, Color(0xFF525252) , FontWeight.w400, 'FontRegular'),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                ],
              ),
            ),



          ],
        ),
        InkWell(
          onTap: (){
            setState(() {

              /*Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                          SendScreen()));*/
              transfer=true;
            });
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 40.0,right: 20.0,left: 20.0),
            padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
            decoration: BoxDecoration(
              color: AppColors.appColor,
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Center(
              child: Text(
                AppLocalizations.instance.text("loc_send"),
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
    );
  }

}
