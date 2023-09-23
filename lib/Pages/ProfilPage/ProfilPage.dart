import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePage.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPageButtonsPages/ForgetPasswordPage/ForgetPasswordPage.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPageButtonsPages/HelpPage/HelpPage.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPageButtonsPages/LanguagePage/LanguagePage.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPageButtonsPages/MyProfileButtonPages/MyProfileButtonPage.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPageButtonsPages/Notifications/NotifictionsPage.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPageButtonsPages/RecentTransaction/RecentTransactionPage.dart';
import 'package:pjurnal_amaliyot/ozgarmaslar.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  Widget _infoProfil() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 30.0.h,
        ),
        ProfilImage.MyProfileImage(),
        SizedBox(
          height: 14.0.h,
        ),
        Text(
          "Full Name",
          style: TextStyle(
            fontSize: 18.0.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF343434),
          ),
        ),
        SizedBox(
          height: 6.0.h,
        ),
        Text(
          "@username",
          style: TextStyle(
            fontSize: 16.0.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF8E8E8E),
          ),
        ),
      ],
    );
  }

  Widget _buttons(String title, IconData iconname, Widget pagename) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => pagename,
                ));
          },
          child: ListTile(
            leading: Icon(iconname),
            title: TitleText.titleText(title),
          ),
        ),
        const Divider(
          thickness: 1.0,
          color: Color(0xFFF2F2F5),
        ),
      ],
    );
  }

  Future _logoutDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: TitleText.appbartitletext("Are you sure want to Log Out?"),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Logout",
                style: TextStyle(
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFFEB5757),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 12.0.h),
                color: const Color(0xFF4F3D56),
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFFFDFDFD),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _allbuttons() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText.ButtonTypeTitle("Personal info"),
            SizedBox(
              height: 24.0.h,
            ),
            _buttons("Your profile", Icons.person_3_outlined,
                const MyProfileButtonPage()),
            _buttons("History Transaction", Icons.save_alt,
                const RecenttransactionPage()),
            SizedBox(
              height: 24.0.h,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText.ButtonTypeTitle("Security"),
            SizedBox(
              height: 24.0.h,
            ),
            _buttons(
                "Face Id",
                Icons.crop_free,
                Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  body: Center(
                    child: TitleText.appbartitletext(
                        "Bu nastroykadan to'g'rilanadi"),
                  ),
                )),
            _buttons(
                "Change Password",
                Icons.lock,
                Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  body: Center(
                    child: TitleText.appbartitletext(
                        "Bu nastroykadan to'g'rilanadi"),
                  ),
                )),
            _buttons(
              "Forgot Password",
              Icons.lock_open,
              const ForgetgetPasswordPage(),
            ),
            SizedBox(
              height: 24.0.h,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText.ButtonTypeTitle("General"),
            SizedBox(
              height: 24.0.h,
            ),
            _buttons("Notification", Icons.notifications_sharp,
                const NotificationsPage()),
            _buttons("Languages", Icons.language, const LanguagePage()),
            _buttons("Help and Support", Icons.info_outline, const HelpPage()),
            SizedBox(
              height: 24.0.h,
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            _logoutDialog(context);
          },
          child: Text(
            "Logout",
            style: TextStyle(
              fontSize: 16.0.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xFFEB5757),
            ),
          ),
        ),
        SizedBox(
          height: 24.0.h,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: ListView(
            children: [
              SizedBox(
                height: 24.0.h,
              ),
              AppBar(
                leading: PagesButtons.AppBarBackButton(HomePage(), context),
                title: TitleText.appbartitletext("Profile"),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              _infoProfil(),
              _allbuttons(),
            ],
          ),
        ),
      ),
    );
  }
}
