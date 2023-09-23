import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPage.dart';
import 'package:pjurnal_amaliyot/ozgarmaslar.dart';

class RecenttransactionPage extends StatelessWidget {
  const RecenttransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24.0.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PagesButtons.AppBarBackButton(
                          const ProfilPage(), context),
                      TitleText.appbartitletext("My Profile"),
                      PagesButtons.IconsButtons(Icons.more_horiz),
                    ],
                  ),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  TitleText.titleText("Today"),
                  _ContactWidget(),
                  _ContactWidget(),
                  TitleText.titleText("Yesterday"),
                  _ContactWidget(),
                  _ContactWidget(),
                  _ContactWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ContactWidget() {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(
            "assets/images/PersonalImage/Ellipse1.png",
            width: 48.w,
            height: 48.0.h,
          ),
          title: Text(
            "Full Name",
            style: TextStyle(
              fontSize: 14.0.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF1F2C37),
            ),
          ),
          subtitle: Text(
            "BCA • 1234 5678 ****",
            style: TextStyle(
                fontSize: 12.0.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF9CA4AB)),
          ),
          trailing: Text(
            "\$125",
            style: TextStyle(
              fontSize: 16.0.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF1F2C37),
            ),
          ),
        ),
        const Divider(
          thickness: 1.0,
          color: Color(0xFFF2F2F5),
        ),
      ],
    );
  }
}
