import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPage.dart';
import 'package:pjurnal_amaliyot/ozgarmaslar.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  final TextEditingController _searchtext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0.w, horizontal: 24.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                leading:
                    PagesButtons.AppBarBackButton(const ProfilPage(), context),
                centerTitle: true,
                title: TitleText.appbartitletext("Help and Support"),
              ),
              SizedBox(
                height: 24.0.h,
              ),
              InputText.SearchInputText("Search", _searchtext),
              SizedBox(
                height: 32.0.h,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ExpansionTile(
                          title: TitleText.ProfilPageButtonText(
                              "Help ${index + 1}"), //header title
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0.h),
                              child: TitleText.ButtonTypeTitle(
                                "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                              ),
                            ),
                          ],
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
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
