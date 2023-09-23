import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPage.dart';
import 'package:pjurnal_amaliyot/ozgarmaslar.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

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
                  AppBar(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    leading: PagesButtons.AppBarBackButton(
                        const ProfilPage(), context),
                    centerTitle: true,
                    title: TitleText.appbartitletext("Legal and Policies"),
                  ),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  TitleText.titleText("1. Terms"),
                  SizedBox(
                    height: 12.0.h,
                  ),
                  TitleText.ButtonTypeTitle(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames."),
                  SizedBox(
                    height: 8.0.h,
                  ),
                  TitleText.ButtonTypeTitle(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames."),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  TitleText.titleText(
                      "2. Changes to the Service and/or Terms:"),
                  SizedBox(
                    height: 12.0.h,
                  ),
                  TitleText.ButtonTypeTitle(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames."),
                  SizedBox(
                    height: 8.0.h,
                  ),
                  TitleText.ButtonTypeTitle(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames."),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
