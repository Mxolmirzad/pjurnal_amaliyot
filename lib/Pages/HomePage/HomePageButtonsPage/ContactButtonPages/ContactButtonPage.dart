import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePage.dart';
import 'package:pjurnal_amaliyot/ozgarmaslar.dart';

class ContactButtonPage extends StatefulWidget {
  const ContactButtonPage({super.key});

  @override
  State<ContactButtonPage> createState() => _ContactButtonPageState();
}

class _ContactButtonPageState extends State<ContactButtonPage> {
  final TextEditingController _searchText = TextEditingController();

  Widget _contact() {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(0),
          minVerticalPadding: 0.0.h,
          leading: Image.asset(
            "assets/images/PersonalImage/Ellipse3.png",
            width: 48.0.w,
            height: 48.0.h,
          ),
          title: TitleText.titleText("Full name"),
          subtitle: Text(
            "BCA • 2468 3545 ****",
            style: TextStyle(
              fontSize: 12.0.sp,
              color: const Color(0xFF78828A),
              fontWeight: FontWeight.w500,
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
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 16.0.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PagesButtons.AppBarBackButton(HomePage(), context),
                      TitleText.appbartitletext("Contacts"),
                      PagesButtons.IconsButtons(Icons.more_horiz),
                    ],
                  ),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  InputText.SearchInputText(
                    "Search contact...",
                    _searchText,
                  ),
                  SizedBox(
                    height: 16.0.h,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 48.0.w,
                          height: 48.0.h,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFECF1F6),
                          ),
                          child: Icon(Icons.add),
                        ),
                      ),
                      SizedBox(
                        width: 12.0.w,
                      ),
                      TitleText.titleText("Add contact"),
                    ],
                  ),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  TitleText.titleText("A"),
                  _contact(),
                  _contact(),
                  _contact(),
                  _contact(),
                  TitleText.titleText("B"),
                  _contact(),
                  _contact(),
                  _contact(),
                  _contact(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
