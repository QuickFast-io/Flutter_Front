import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/colors.dart';
import 'package:rabbit/common/custom_widget.dart';
import 'package:rabbit/common/localization/localizations.dart';
import 'package:rabbit/screens/home/send_page.dart';
import 'package:rabbit/screens/home/transfer_page.dart';
import 'package:rabbit/screens/home/wallet_page.dart';

class CoinDetailsPage extends StatefulWidget {
  Tag? coinDetails;

  CoinDetailsPage({Key? key, required this.coinDetails}) : super(key: key);

  @override
  State<CoinDetailsPage> createState() => _CoinDetailsPageState();
}

class _CoinDetailsPageState extends State<CoinDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: AppColors.appColor,
        elevation: 0.5,
        title: Text(
          widget.coinDetails!.name.toString(),
          style: CustomWidget(context: context).CustomSizedTextStyle(
              18.0, AppColors.blackColor, FontWeight.w600, 'FontRegular'),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            coinDetailUI(),
          ],
        ),
      ),
    );
  }

  Widget coinDetailUI() {
    return Column(
      children: [
        SizedBox(
          height: 30.0,
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                widget.coinDetails!.image.toString(),
                width: 80.0,
                height: 40.0,
              ),
              SizedBox(
                height: 24.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.coinDetails!.quantity.toString() +
                        " " +
                        widget.coinDetails!.coin.toString(),
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                       45.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Text(
                      "\$ " + widget.coinDetails!.value.toString(),
                      style: CustomWidget(context: context)
                          .CustomSizedTextStyle(14.0, AppColors.blackColor,
                              FontWeight.w400, 'FontRegular'),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SendScreen(
                                coinDetails: widget.coinDetails!,
                              )));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.35,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.north_east_outlined,
                            color: Colors.black,
                            size: 16.0,
                          ),
                          SizedBox(
                            width: 3.0,
                          ),
                          Text(
                            "SEND".toUpperCase(),
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                    15.0,
                                    AppColors.blackColor,
                                    FontWeight.w400,
                                    'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  InkWell(
                    onTap: () {
                      showDepoist();
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.35,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.qr_code_2_outlined,
                            color: Colors.black,
                            size: 16.0,
                          ),
                          SizedBox(
                            width: 3.0,
                          ),
                          Text(
                            "Receive".toUpperCase(),
                            style: CustomWidget(context: context)
                                .CustomSizedTextStyle(
                                    15.0,
                                    AppColors.blackColor,
                                    FontWeight.w400,
                                    'FontRegular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          flex: 6,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35.0),
                  topLeft: Radius.circular(35.0)),
              color: AppColors.whiteColor,
            ),
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 160.0,
                  ),
                  SvgPicture.asset(
                    "assets/menu/box.svg",
                    height: 100.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "No Transactions",
                    textAlign: TextAlign.center,
                    style: CustomWidget(context: context).CustomSizedTextStyle(
                        16.0,
                        AppColors.blackColor,
                        FontWeight.w600,
                        'FontRegular'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  showDepoist() {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          ),
        ),
        barrierColor: Colors.white.withOpacity(0),
        backgroundColor: Colors.white,
        enableDrag: true,
        context: context,
        builder: (BuildContext con) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter ssetState) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.78,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
                color: Colors.transparent,
              ),
              padding: EdgeInsets.only(right: 15.0, left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8.0,),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        ssetState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 86.0,
                        height: 3.0,
                        color: Color(0xFF262626),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Deposit " + widget.coinDetails!.coin,
                          style: CustomWidget(context: context)
                              .CustomSizedTextStyle(24.0, AppColors.blackColor,
                                  FontWeight.w600, 'FontRegular'),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Image.asset(
                          "assets/others/qr.png",
                          height: 250.0,
                          width: 250.0,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(

                          child: Padding(
                            padding: EdgeInsets.only(left: 25.0,right: 25.0,),
                            child: Text(
                              "Send only ETH to this address,sending any other asset will result in permanent loss",
                              style: CustomWidget(context: context)
                                  .CustomSizedTextStyle(14.0, Color(0xFF737373),
                                  FontWeight.w400, 'FontRegular'),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 35.0,
                      ),
                      Text(
                        "Wallet  address",
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(14.0, AppColors.blackColor,
                                FontWeight.w500, 'FontRegular'),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "0x9ba84A2275c45......ca6588235189FDE76",
                        style: CustomWidget(context: context)
                            .CustomSizedTextStyle(16.0, Color(0xFF737373),
                                FontWeight.w400, 'FontRegular'),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(
                                  top: 10.0,
                                  bottom: 10.0,
                                  left: 25.0,
                                  right: 25.0),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border:
                                    Border.all(color: Colors.black, width: 1.0),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Share",
                                    style: CustomWidget(context: context)
                                        .CustomSizedTextStyle(
                                            14.0,
                                            Colors.black,
                                            FontWeight.w500,
                                            'FontRegular'),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Icon(
                                    Icons.share_outlined,
                                    color: Colors.black,
                                    size: 12.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Flexible(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(
                                  top: 10.0,
                                  bottom: 10.0,
                                  left: 25.0,
                                  right: 25.0),
                              decoration: BoxDecoration(
                                color: AppColors.appColor,
                                border: Border.all(
                                    color: AppColors.appColor, width: 1.0),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Copy",
                                    style: CustomWidget(context: context)
                                        .CustomSizedTextStyle(
                                            14.0,
                                            Colors.black,
                                            FontWeight.w500,
                                            'FontRegular'),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Icon(
                                    Icons.copy,
                                    color: Colors.black,
                                    size: 12.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            );
          });
        });
  }
}
