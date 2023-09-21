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

  Widget _contacts(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 12.0.h,
        ),
        ListTile(
          title: TitleText.titleText("Full name"),
          leading:
              Image.asset("assets/images/PersonalImage/Ellipse${index}.png"),
          subtitle: Text(
            "BCA • 2254 1654 ****",
            style: TextStyle(
                fontSize: 12.0.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF9CA4AB)),
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
                _contacts(1),
                _contacts(2),
                _contacts(3),
                TitleText.titleText("A"),
                _contacts(1),
                _contacts(2),
                _contacts(3),
                TitleText.titleText("A"),
                _contacts(1),
                _contacts(2),
                _contacts(3),
                TitleText.titleText("A"),
                _contacts(1),
                _contacts(2),
                _contacts(3),
                TitleText.titleText("A"),
                _contacts(1),
                _contacts(2),
                _contacts(3),
                TitleText.titleText("A"),
                _contacts(1),
                _contacts(2),
                _contacts(3),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
