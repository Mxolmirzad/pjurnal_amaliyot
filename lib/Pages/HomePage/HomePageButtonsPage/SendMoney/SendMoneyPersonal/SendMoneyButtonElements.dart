import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePageButtonsPage/SendMoney/SendMoneyPersonal/SendMoneyPersonalPage.dart';
import 'package:pjurnal_amaliyot/ozgarmaslar.dart';

final TextStyle _dropDownButtonTextStyle = TextStyle(
  color: Color(0xFF1F2C37),
  fontSize: 12.0.sp,
  fontWeight: FontWeight.w500,
);

Widget dropdownMenuSendMoney() {
  return Container(
    width: double.infinity,
    height: 64.0.h,
    decoration: BoxDecoration(
      color: const Color(0xFFFDFDFD),
      borderRadius: BorderRadius.circular(24.0.r),
      border: Border.all(
        color: const Color(0xFFE3E9ED),
      ),
    ),
    padding: EdgeInsets.symmetric(horizontal: 16.0.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0.r),
            color: Color(0xFFE2E0E4),
          ),
          width: 92.w,
          height: 24.0.h,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: 8.0.w,
            vertical: 4.0.h,
          ),
          child: DropdownButton(
            value: "USD",
            underline: Container(),
            items: [
              DropdownMenuItem(
                child: Row(
                  children: [
                    Image.asset("assets/images/USD.png"),
                    SizedBox(
                      width: 8.0.w,
                    ),
                    Text(
                      "USD",
                      style: _dropDownButtonTextStyle,
                    ),
                  ],
                ),
                value: "USD",
              ),
              DropdownMenuItem(
                child: Row(
                  children: [
                    Image.asset("assets/images/USD.png"),
                    SizedBox(
                      width: 8.0.w,
                    ),
                    Text(
                      "UZS",
                      style: _dropDownButtonTextStyle,
                    ),
                  ],
                ),
                value: "UZS",
              ),
              DropdownMenuItem(
                child: Row(
                  children: [
                    Image.asset("assets/images/USD.png"),
                    SizedBox(
                      width: 8.0.w,
                    ),
                    Text(
                      "RUB",
                      style: _dropDownButtonTextStyle,
                    ),
                  ],
                ),
                value: "RUB",
              ),
            ],
            onChanged: (value) => print("SAlom"),
          ),
        ),
        Text(
          "\$154.42",
          style: TextStyle(
            fontSize: 32.0.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1F2C37),
          ),
        )
      ],
    ),
  );
}

Widget titleText(String title) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 14.0.sp,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF1F2C37),
    ),
  );
}

Future ComfirmTransferDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80.0.w,
              height: 80.0.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF6F6F6),
              ),
              alignment: Alignment.center,
              child: Image.asset("assets/images/Icons/Upload.png"),
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Text(
              "Total transfer",
              style: TextStyle(
                color: const Color(0xFF66707A),
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            Text(
              "\$154.42",
              style: TextStyle(
                color: const Color(0xFF1F2C37),
                fontSize: 32.0.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleText("Transfer detail"),
            SizedBox(
              height: 16.0.h,
            ),
            _detailinfo("From", "e-Wallet • 3446 4655 5445"),
            _detailinfo("To", "BCA • 2468 3545 4534"),
            _detailinfo("Transfer", "\$150.42"),
            Container(
              margin: EdgeInsets.only(bottom: 8.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _transferDetailTitle("Admin fee"),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      height: 22.0.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF804E89),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Text(
                        "Free",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFFDFDFD),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 1.0,
              color: Color(0xFFE3E9ED),
            ),
            SizedBox(
              height: 12.0.h,
            ),
            _detailinfo("Total transfer", "\$150.42"),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Cancel",
              style: TextStyle(
                fontSize: 14.0.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF1F2C37),
              ),
            ),
          ),
          DialogMenuButton("Confirm", context),
        ],
      );
    },
  );
}

Widget DialogMenuButton(String title, BuildContext context) {
  return InkWell(
    onTap: () {
      TransferFailedDialog(context);
    },
    child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0.w,
        vertical: 12.0.h,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF4F3D56),
        borderRadius: BorderRadius.circular(5.0.r),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: const Color(0xFFFDFDFD),
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

Widget _detailinfo(String title, String info) {
  return Container(
    margin: EdgeInsets.only(bottom: 8.0.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _transferDetailTitle(title),
        _transferDetailInfo(info),
      ],
    ),
  );
}

Widget _transferDetailTitle(String title) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 14.0.sp,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF9CA4AB),
    ),
  );
}

Widget _transferDetailInfo(String title) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 14.0.sp,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF1F2C37),
    ),
  );
}

Future TransferSuccesDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Image.asset(
          "assets/images/Icons/Congratulations.png",
          width: 222.w,
          height: 164.h,
        ),
        content: Text(
          "Your transfer is succesfully sent",
          style: TextStyle(
            fontSize: 14.0.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF78828A),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              OrqagaQaytish.OldingilariniOchiribQaytish(
                  context, const SendMoneyPersonalPage());
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.0.w,
                vertical: 12.0.h,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF4F3D56),
                borderRadius: BorderRadius.circular(5.0.r),
              ),
              child: Text(
                "Continue",
                style: TextStyle(
                  color: const Color(0xFFFDFDFD),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      );
    },
  );
}

Future TransferFailedDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Image.asset(
          "assets/images/Icons/Error.png",
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            titleText("Failed"),
            Text(
              "Your transfer is failed because of bad networking.",
              style: TextStyle(
                fontSize: 14.0.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF78828A),
              ),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {
              OrqagaQaytish.OldingilariniOchiribQaytish(
                  context, const SendMoneyPersonalPage());
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.0.w,
                vertical: 12.0.h,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF4F3D56),
                borderRadius: BorderRadius.circular(5.0.r),
              ),
              child: Text(
                "Repeat Transfer",
                style: TextStyle(
                  color: const Color(0xFFFDFDFD),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
