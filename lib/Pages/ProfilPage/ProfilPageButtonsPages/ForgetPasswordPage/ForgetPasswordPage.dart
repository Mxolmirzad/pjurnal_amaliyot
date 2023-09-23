import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPage.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPageButtonsPages/ForgetPasswordPage/CreateNewPasswordPage.dart';
import 'package:pjurnal_amaliyot/ozgarmaslar.dart';

class ForgetgetPasswordPage extends StatefulWidget {
  const ForgetgetPasswordPage({super.key});

  @override
  State<ForgetgetPasswordPage> createState() => _ForgetgetPasswordPageState();
}

class _ForgetgetPasswordPageState extends State<ForgetgetPasswordPage> {
  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 16.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PagesButtons.AppBarBackButton(const ProfilPage(), context),
              SizedBox(
                height: 24.0.h,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 28.0.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1F2C37),
                      ),
                    ),
                    SizedBox(
                      height: 8.0.h,
                    ),
                    TitleText.ButtonTypeTitle("Recover your account password"),
                  ],
                ),
              ),
              SizedBox(
                height: 32.0.h,
              ),
              TitleText.titleText("E-mail"),
              SizedBox(
                height: 8.0.h,
              ),
              InputText.OnylText(_email, "Enter your email address"),
              SizedBox(
                height: 48.0.h,
              ),
              PagesButtons.WidgetAsosiyButton("Next", context, _navigate),
            ],
          ),
        ),
      ),
    );
  }

  void _navigate() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CreateNewPasswordPage(),
      ),
    );
  }
}
