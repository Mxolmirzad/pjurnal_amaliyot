import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/ProfilPage/ProfilPage.dart';
import 'package:pjurnal_amaliyot/ozgarmaslar.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  late bool _isShowNotification = false;

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
                title: TitleText.appbartitletext("Notification"),
              ),
              SizedBox(
                height: 36.0.h,
              ),
              TitleText.titleText("Set your notification"),
              SizedBox(
                height: 24.0.h,
              ),
              _showNotification(),
              const Divider(
                thickness: 1.0,
                color: Color(0xFFF2F2F5),
              ),
              _buttons("Financial Activity", Icons.stacked_line_chart_rounded),
              _buttons(
                  "Non-financial Activity", Icons.stacked_line_chart_rounded),
              _buttons("Security", Icons.security_rounded),
            ],
          ),
        ),
      ),
    );
  }

  Widget _showNotification() {
    return ListTile(
      leading: const Icon(
        Icons.notifications_none,
        color: Color(0xFF1F2C37),
      ),
      title: TitleText.ProfilPageButtonText("Show Notifications"),
      trailing: CupertinoSwitch(
        activeColor: const Color(0xFFF2F2F5),
        trackColor: const Color(0xFFF2F2F5),
        thumbColor: const Color(0xFF4F3D56),
        value: _isShowNotification,
        onChanged: (value) {
          setState(
            () {
              _isShowNotification = !_isShowNotification;
            },
          );
        },
      ),
    );
  }

  Widget _buttons(String title, IconData iconsname) {
    return ListTile(
      leading: Icon(
        iconsname,
        color: const Color(0xFF1F2C37),
      ),
      title: TitleText.ProfilPageButtonText(title),
    );
  }
}
