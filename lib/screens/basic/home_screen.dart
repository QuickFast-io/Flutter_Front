import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbit/common/bottom_nav/floating_navbar.dart';
import 'package:rabbit/common/bottom_nav/floating_navbar_item.dart';
import 'package:rabbit/common/custom_bottom_bar.dart';
import 'package:rabbit/screens/home/chat_menu_screen.dart';
import 'package:rabbit/screens/home/chat_screen.dart';
import 'package:rabbit/screens/home/dashboard.dart';
import 'package:rabbit/screens/wallet/rabbit_page.dart';
import 'package:rabbit/screens/home/wallet_page.dart';
import 'package:rabbit/screens/side_menu/offers_screen.dart';
import 'package:rabbit/screens/side_menu/profile_menu_screen.dart';

import '../../common/colors.dart';
import '../../common/custom_widget.dart';

class Home_Screen extends StatefulWidget {
  int index;
   Home_Screen({Key? key,required this.index}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}


class _Home_ScreenState extends State<Home_Screen> {

  List<String> titleheader = [
    "Property",
    "Chat",
    "Wallet",
    "Rabbit",
    "More",
  ];
  late Widget screen = RabbitScreen();
  bool dashView =false;
  int currentindex = 2;
  String headerTitle = "";

  List<Widget> bottomPage = [
    DashBoard(),
    ChatScreen(),
    RabbitScreen(),
    Wallet(),

    ProfileMenu_Screen(),

  ];
  // Row(
  // children: [
  // Icon(
  // Icons.verified_outlined,
  // color: Colors.white,
  // ),
  // SizedBox(
  // width: 5.0,
  // ),
  // Text(
  // "Verified",
  // style: CustomWidget(context: context)
  //     .CustomSizedTextStyle(14.0, Colors.white,
  // FontWeight.w600, 'FontRegular'),
  // textAlign: TextAlign.center,
  // ),
  // ],
  // ),

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dashView = true;
    if(widget.index==-1)
      {
        currentindex=2;
      }
    else
      {
        currentindex=widget.index;
      }
    headerTitle = titleheader[currentindex];
  }


  Widget dashBoard(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: AppColors.backgroundColor,
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: Scaffold(
      backgroundColor: AppColors.whiteColor,

      // appBar: currentindex==4|| currentindex==2?PreferredSize(child: Container(), preferredSize:Size(0.0,0.0)):AppBar(
      //   backgroundColor: AppColors.backgroundColor,
      //   automaticallyImplyLeading: false,
      //   elevation: 0.0,
      //   title: Text(
      //     headerTitle,
      //     style: CustomWidget(context: context).CustomSizedTextStyle(
      //         22.0, AppColors.blackColor, FontWeight.w700, 'FontRegular'),
      //   ),
      //   centerTitle: true,
      //   /*actions: [
      //     Padding(
      //       padding: EdgeInsets.only(left: 12.0, right: 12.0),
      //       child: SvgPicture.asset(
      //         'assets/images/notify.svg',
      //         height: 20.0,
      //         color: AppColors.blackColor,
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.only(left: 12.0, right: 12.0),
      //       child: SvgPicture.asset(
      //         'assets/images/profile.svg',
      //         color: AppColors.blackColor,
      //       ),
      //     ),
      //     SizedBox(
      //       width: 20.0,
      //     )
      //   ],*/
      // ),
      body: Stack(
        children: [screen,
        ],
      ),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor:AppColors.whiteColor,
        selectedBackgroundColor: Colors.transparent,
        selectedItemColor: AppColors.blackColor,
        unselectedItemColor: AppColors.blackColor,


        onTap: (int val) {
          changeIndex(val);
        },
        currentIndex: currentindex,
        items: [
          FloatingNavbarItem(

              customWidget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: currentindex==0?SvgPicture.asset(
                  "assets/menu_icons/home_active.svg",
                  height:30.0 ,
                ):SvgPicture.asset(
                  "assets/menu_icons/home.svg",
                  height:26.0 ,
                ),
              ),
            title: 'Property',
            enableLineIndicator: currentindex==0?true:false
          ),
          FloatingNavbarItem(
              customWidget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: currentindex==1?SvgPicture.asset(
                  "assets/menu_icons/chat_active.svg",
                    height:30.0 ,
                ):SvgPicture.asset(
                  "assets/menu_icons/chat.svg",
                  height:26.0 ,
                ),
              ),
            title: 'Chat',
              enableLineIndicator: currentindex==1?true:false
          ),
          FloatingNavbarItem(
              customWidget: Container(

                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.appColor,
                ),
                child:SvgPicture.asset(
                  "assets/menu_icons/wallet.svg",
                  width: 26.0,
                  height: 26.0 ,
                  color: Colors.black,
                  fit: BoxFit.contain,
                ),

              ),
              enableLineIndicator:false
          ),
          FloatingNavbarItem(
              customWidget:Padding(
                padding: const EdgeInsets.all(8.0),
                child:currentindex==3?SvgPicture.asset(
                  "assets/menu_icons/rabbit_active.svg",
                  height:30.0 ,
                ):SvgPicture.asset(
                  "assets/menu_icons/rabbit.svg",
                  height:26.0 ,
                ),
              ),
            title: 'Rabbit',
              enableLineIndicator: currentindex==3?true:false
          ),
          FloatingNavbarItem(
              customWidget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: currentindex==4?SvgPicture.asset(
                  "assets/menu_icons/more_active.svg",
                  height:30.0 ,
                ):SvgPicture.asset(
                  "assets/menu_icons/more.svg",
                  height:26.0 ,
                ),
              ),
            title: 'More',
              enableLineIndicator: currentindex==4?true:false
          ),
        ],
      ),
    ), onWillPop:  () async {
      if (currentindex != 0) {
        setState(() {
          currentindex = 0;
          dashView = true;
          //currentScreen = screens[currentTab];
        });
        return false;
      } else {
        exit(0);
      }
      return true;
    },

    );
    
  }

  changeIndex(int index) {
    setState(() {
      currentindex = index;
      headerTitle = titleheader[currentindex];


        dashView = false;
        screen = bottomPage[index];

    });
  }

}

