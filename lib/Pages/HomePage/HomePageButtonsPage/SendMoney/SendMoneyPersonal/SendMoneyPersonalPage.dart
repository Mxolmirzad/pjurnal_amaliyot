import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePageButtonsPage/SendMoney/SendMoneyPage.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePageButtonsPage/SendMoney/SendMoneyPersonal/SendMoneyButtonElements.dart';
import 'package:pjurnal_amaliyot/ozgarmaslar.dart';

class SendMoneyPersonalPage extends StatefulWidget {
  const SendMoneyPersonalPage({super.key});

  @override
  State<SendMoneyPersonalPage> createState() => _SendMoneyPersonalPageState();
}

class _SendMoneyPersonalPageState extends State<SendMoneyPersonalPage> {
  TextEditingController? _message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 28.0.h,
                  ),
                  AppBar(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    leading: InkWell(
                      onTap: () {
                        OrqagaQaytish.OldingilariniOchiribQaytish(
                            context, const SendMoneyPage());
                      },
                      child: CircleAvatar(
                        radius: 24.0.r,
                        backgroundImage: const AssetImage(
                          "assets/images/NotificationBgHomePage.png",
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xFF1F2C37),
                          size: 24.0.sp,
                        ),
                      ),
                    ),
                    title: Text(
                      "Send money",
                      style: TextStyle(
                        color: Color(0xFF1F2C37),
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/images/ProfilImagesEllips.png",
                        width: 80.w,
                        height: 80.h,
                      ),
                      SizedBox(
                        height: 14.0.h,
                      ),
                      Text(
                        "Tiana Saris",
                        style: TextStyle(
                          fontSize: 18.0.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF1F2C37),
                        ),
                      ),
                      SizedBox(
                        height: 4.0.h,
                      ),
                      Text(
                        "BCA • 8745 5654 ****",
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF9CA4AB),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      titleText("Amount:"),
                      SizedBox(
                        height: 16.0.h,
                      ),
                      dropdownMenuSendMoney(),
                      SizedBox(
                        height: 24.0.h,
                      ),
                      titleText("Message"),
                      SizedBox(
                        height: 8.0.h,
                      ),
                      Container(
                        width: double.infinity,
                        height: 116.0.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0.r),
                          border: Border.all(
                            color: Color(0xFFE3E9ED),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0.w,
                          vertical: 16.0.h,
                        ),
                        child: TextField(
                          maxLines: 30,
                          maxLength: 100,
                          controller: _message,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Thank you for your cooperation :)",
                            hintStyle: TextStyle(
                              fontSize: 12.0.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF9CA4AB),
                            ),
                            counterText: '',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 112.0.h,
                  ),
                  InkWell(
                    onTap: () {
                      ComfirmTransferDialog(context);
                    },
                    splashColor: Colors.green,
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.0.w,
                        vertical: 12.0.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0.r),
                        color: const Color(0xFF4F3D56),
                      ),
                      child: Text(
                        "Send Money",
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          color: const Color(0xFfFDFDFD),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
