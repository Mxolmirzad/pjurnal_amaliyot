import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePageButtonsPage/ContactButtonPages/ContactButtonPage.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePageButtonsPage/RequestMoney/RequestMoneyPage.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePageButtonsPage/SendMoney/SendMoneyPage.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePageModels/HomePageElements.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePageModels/ModelsHomePage.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<HomePageButtonModels> _models = [
    HomePageButtonModels(
      title: "Send money",
      subtitle: "Take acc to acc",
      iconName: Icon(
        Icons.near_me,
        size: 24.0.sp,
        color: Color(0xFF55405D),
      ),
    ),
    HomePageButtonModels(
      title: "Pay the bill",
      subtitle: "Lorem Ipsum",
      iconName: Icon(
        Icons.account_balance_wallet_outlined,
        size: 24.0.sp,
        color: Color(0xFF55405D),
      ),
    ),
    HomePageButtonModels(
      title: "Request",
      subtitle: "Lorem Ipsum",
      iconName: Icon(
        Icons.login,
        size: 24.0.sp,
        color: Color(0xFF55405D),
      ),
    ),
    HomePageButtonModels(
      title: "Contact",
      subtitle: "Lorem Ipsum",
      iconName: Icon(Icons.supervisor_account_rounded),
    ),
  ];
  final List<HomePagePaymentCardsModels> _cards = [
    HomePagePaymentCardsModels(
        cardName: "X-card",
        cardType: 'visa',
        balance: 64565465,
        lastnumber: 1234,
        validity: "12/24"),
    HomePagePaymentCardsModels(
        cardName: "X-card",
        cardType: 'visa',
        balance: 64565465,
        lastnumber: 1234,
        validity: "12/24"),
    HomePagePaymentCardsModels(
        cardName: "X-card",
        cardType: 'visa',
        balance: 64565465,
        lastnumber: 1234,
        validity: "12/24"),
    HomePagePaymentCardsModels(
        cardName: "X-card",
        cardType: 'visa',
        balance: 64565465,
        lastnumber: 1234,
        validity: "12/24"),
    HomePagePaymentCardsModels(
        cardName: "X-card",
        cardType: 'visa',
        balance: 64565465,
        lastnumber: 1234,
        validity: "12/24"),
    HomePagePaymentCardsModels(
        cardName: "X-card",
        cardType: 'visa',
        balance: 64565465,
        lastnumber: 1234,
        validity: "12/24"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      const AssetImage("assets/images/ProfilImagesEllips.png"),
                  radius: 24.0.r,
                ),
                title: Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 12.0.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF9CA4AB),
                  ),
                ),
                subtitle: Text(
                  "Sophia Calzoni",
                  style: TextStyle(
                    fontSize: 18.0.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1F2C37),
                  ),
                ),
                trailing: CircleAvatar(
                  backgroundImage: const AssetImage(
                      "assets/images/NotificationBgHomePage.png"),
                  child: Icon(
                    Icons.notifications,
                    color: Color(0xFF543B58),
                    size: 24.0.sp,
                  ),
                  radius: 24.0.r,
                ),
              ),
            ),
            SizedBox(
              height: 16.0.h,
            ),
            CaruselPaymentCard(_cards, context),
            SizedBox(
              height: 28.0.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomePageButton(_models[0], const SendMoneyPage(), context),
                  HomePageButton(_models[1], const SendMoneyPage(), context),
                ],
              ),
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomePageButton(_models[2], const RequestoneyPage(), context),
                  HomePageButton(_models[3], const ContactButtonPage(), context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
