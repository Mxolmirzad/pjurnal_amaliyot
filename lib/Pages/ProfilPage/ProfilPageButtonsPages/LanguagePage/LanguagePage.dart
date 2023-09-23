import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPage.dart';
import 'package:pjurnal_amaliyot/ozgarmaslar.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  final List<bool> _suggestlanguale = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0.w, horizontal: 24.0.h),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    leading: PagesButtons.AppBarBackButton(
                        const ProfilPage(), context),
                    centerTitle: true,
                    title: TitleText.appbartitletext("Language"),
                  ),
                  SizedBox(
                    height: 36.0.h,
                  ),
                  TitleText.titleText("Suggested Languages"),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  _selectLanguage(0, "English (UK)"),
                  _selectLanguage(1, "English"),
                  _selectLanguage(2, "Bahasa Indonesia"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _selectLanguage(int index, String language) {
    return Column(
      children: [
        SizedBox(
          height: 24.0.h,
        ),
        InkWell(
          onTap: () {
            setState(() {
              _suggestlanguale[0] = false;
              _suggestlanguale[1] = false;
              _suggestlanguale[2] = false;
              _suggestlanguale[index] = true;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                language,
                style: TextStyle(
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF1F2C37),
                ),
              ),
              _suggestlanguale[index]
                  ? const Icon(
                      Icons.check,
                      color: Color(0xFF2B7979),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
        SizedBox(
          height: 24.0.h,
        ),
        const Divider(
          thickness: 1.0,
          color: Color(0xFFF2F2F5),
        ),
      ],
    );
  }
}
