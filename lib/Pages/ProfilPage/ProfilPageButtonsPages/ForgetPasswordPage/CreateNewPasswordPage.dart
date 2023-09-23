import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPage.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPageButtonsPages/ForgetPasswordPage/ForgetPasswordPage.dart';
import 'package:pjurnal_amaliyot/ozgarmaslar.dart';

class CreateNewPasswordPage extends StatefulWidget {
  const CreateNewPasswordPage({super.key});

  @override
  State<CreateNewPasswordPage> createState() => _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends State<CreateNewPasswordPage> {
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _comfirmPassword = TextEditingController();
  bool _isView = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0.h, horizontal: 24.0.w),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PagesButtons.AppBarBackButton(
                      const ForgetgetPasswordPage(), context),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Create a New Password",
                          style: TextStyle(
                            fontSize: 28.0.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF1F2C37),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 8.0.h,
                        ),
                        TitleText.ButtonTypeTitle("Enter your new password"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32.0.h,
                  ),
                  TitleText.titleText("New password"),
                  SizedBox(
                    height: 8.0.h,
                  ),
                  _PasswordInput("Enter new password", _newPassword),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  TitleText.titleText("Confirm Password"),
                  SizedBox(
                    height: 8.0.h,
                  ),
                  _PasswordInput("Confirm Password", _comfirmPassword),
                  SizedBox(
                    height: 48.0.h,
                  ),
                  PagesButtons.WidgetAsosiyButton("Next", context, _navigate),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigate() {
    if (_newPassword.text == _comfirmPassword.text &&
        !_newPassword.text.isEmpty &&
        !_comfirmPassword.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title:
                Center(child: Image.asset("assets/images/SuccesPassword.png")),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TitleText.ProfilPageButtonText("Succes"),
                SizedBox(
                  height: 8.0.h,
                ),
                TitleText.ButtonTypeTitle(
                    "Your password is succesfully created"),
              ],
            ),
            actions: [
              PagesButtons.WidgetAsosiyButton(
                "Continue",
                context,
                _navigateDialog,
              ),
            ],
          );
        },
      );
    } else {
      final snackBar = SnackBar(
        content: const Text(
          "The password is not the same",
          style: TextStyle(color: Colors.white),
        ),
        action: SnackBarAction(
          label: "Ok",
          onPressed: () {
            _newPassword.clear();
            _comfirmPassword.clear();
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Widget _PasswordInput(String hint, TextEditingController textcontroller) {
    return WidgetsModels.ContainerBorder(
      TextField(
        maxLength: 8,
        controller: textcontroller,
        style: TextStyle(
          fontSize: 12.0.sp,
          color: const Color(0xFF78828A),
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          counterText: "",
          suffixIcon: InkWell(
            onTap: () {
              setState(() {
                _isView = !_isView;
              });
            },
            child: _isView
                ? const Icon(
                    Icons.visibility,
                    color: Color(0xFFA2A0B3),
                  )
                : const Icon(
                    Icons.visibility_off,
                    color: Color(0xFFA2A0B3),
                  ),
          ),
          hintText: hint,
          hintStyle: TextStyle(
            color: const Color(0xFF78828A),
            fontSize: 12.0.sp,
            fontWeight: FontWeight.w400,
          ),
          border: InputBorder.none,
        ),
        obscureText: _isView,
      ),
    );
  }

  void _navigateDialog() {
    OrqagaQaytish.OldingilariniOchiribQaytish(context, const ProfilPage());
  }
}
