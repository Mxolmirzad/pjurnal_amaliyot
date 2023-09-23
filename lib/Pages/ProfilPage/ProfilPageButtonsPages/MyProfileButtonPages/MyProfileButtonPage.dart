import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPage.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPageButtonsPages/MyProfileButtonPages/MyProfileEditPage.dart';
import 'package:pjurnal_amaliyot/PersonInfo/PersonInfo.dart';
import 'package:pjurnal_amaliyot/ozgarmaslar.dart';

class MyProfileButtonPage extends StatelessWidget {
  const MyProfileButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            children: [
              _topbar(context),
              _info("Full Name", PersonInfoText.fullName.text),
              _info("Email", PersonInfoText.email.text),
              _info("Phone Number", PersonInfoText.phoneNumber.text),
              _info("Address", PersonInfoText.addres.text),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topbar(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 24.0.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PagesButtons.AppBarBackButton(const ProfilPage(), context),
            TitleText.appbartitletext("My Profile"),
            // PagesButtons.IconsButtons(Icons.edit_square),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyProfileEditPage(),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 24.0.r,
                backgroundImage: const AssetImage(
                  "assets/images/NotificationBgHomePage.png",
                ),
                child: Icon(
                  Icons.edit_square,
                  color: const Color(0xFF1F2C37),
                  size: 24.0.sp,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 40.0.h,
        ),
        ProfilImage.MyProfileImage(),
        SizedBox(
          height: 8.0.h,
        ),
      ],
    );
  }

  Widget _info(String type, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TitleText.ButtonTypeTitle(type),
        SizedBox(
          height: 16.0.h,
        ),
        TitleText.titleText(text),
        SizedBox(
          height: 16.0.h,
        ),
        const Divider(
          thickness: 1.0,
          color: Color(0xFFF2F2F5),
        ),
      ],
    );
  }
}
