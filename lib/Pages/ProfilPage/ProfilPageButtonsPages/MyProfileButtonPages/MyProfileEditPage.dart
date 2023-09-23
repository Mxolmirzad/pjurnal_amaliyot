import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPageButtonsPages/MyProfileButtonPages/MyProfileButtonPage.dart';
import 'package:pjurnal_amaliyot/PersonInfo/PersonInfo.dart';
import 'package:pjurnal_amaliyot/ozgarmaslar.dart';

class MyProfileEditPage extends StatefulWidget {
  const MyProfileEditPage({super.key});

  @override
  State<MyProfileEditPage> createState() => _MyProfileEditPageState();
}

class _MyProfileEditPageState extends State<MyProfileEditPage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phonenumber = TextEditingController();
  final TextEditingController _adress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Column(
                children: [
                  _topbar(context),
                  SizedBox(
                    height: 32.0.h,
                  ),
                  _info("Full Name", PersonInfoText.fullName.text, _name),
                  _info("Email", PersonInfoText.email.text, _email),
                  _info("Phone Number", PersonInfoText.phoneNumber.text,
                      _phonenumber),
                  _info("Address", PersonInfoText.addres.text, _adress),
                  PagesButtons.WidgetAsosiyButton(
                      "Save Change", context, _navigate),
                  SizedBox(
                    height: 24.0.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _navigate() {
    OrqagaQaytish.OldingilariniOchiribQaytish(
        context, const MyProfileButtonPage());
    setState(() {
      PersonInfoText.fullName = _name;
      PersonInfoText.email = _email;
      PersonInfoText.phoneNumber = _phonenumber;
      PersonInfoText.addres = _adress;
    });
  }

  Widget _topbar(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 24.0.h,
        ),
        AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          centerTitle: true,
          title: TitleText.appbartitletext("My Profile"),
          leading: PagesButtons.AppBarBackButton(
              const MyProfileButtonPage(), context),
        ),
        SizedBox(
          height: 40.0.h,
        ),
        Stack(
          children: [
            Positioned(child: ProfilImage.MyProfileImage()),
            Positioned(
              top: 50.h,
              left: 44.0.w,
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 50.0.w,
                  height: 50.0.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1.0.h,
                    ),
                    color: const Color(0xFF4F3D56),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8.0.h,
        ),
      ],
    );
  }

  Widget _info(
      String type, String defaultName, TextEditingController controllername) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TitleText.titleText(type),
        SizedBox(
          height: 16.0.h,
        ),
        WidgetsModels.ContainerBorder(
          TextField(
            controller: controllername..text = defaultName,
            style: TextStyle(
              color: const Color(0xFF78828A),
              fontSize: 12.0.sp,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: defaultName,
              hintStyle: TextStyle(
                color: const Color(0xFF78828A),
                fontSize: 12.0.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16.0.h,
        ),
      ],
    );
  }
}
