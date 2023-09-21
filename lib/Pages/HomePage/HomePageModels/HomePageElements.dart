import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePageModels/ModelsHomePage.dart';

Widget HomePageButton(HomePageButtonModels modeltxt,
    StatefulWidget navigatePage, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => navigatePage,
        ),
      );
    },
    child: Container(
      width: 156.w,
      height: 140.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0.r),
        border: Border.all(
          color: Color(0xFFE3E9ED),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 48.0.w,
            height: 48.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0.r),
              color: Color(0xFFECF1F6),
            ),
            child: modeltxt.iconName,
          ),
          Text(
            modeltxt.title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1F2C37),
            ),
          ),
          Text(
            modeltxt.subtitle,
            style: TextStyle(
              fontSize: 12.0.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFF9CA4AB),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget CaruselPaymentCard(
    List<HomePagePaymentCardsModels> listmodels, BuildContext context) {
  return SizedBox(
    width: double.infinity,
    height: 240.0.h,
    child: ListView.builder(
      itemCount: listmodels.length,
      itemBuilder: (context, index) {
        return CaruselPaymentCardVonWidget(listmodels[index]);
      },
      scrollDirection: Axis.horizontal,
    ),
  );
}

Widget CaruselPaymentCardVonWidget(HomePagePaymentCardsModels modelstxt) {
  return Container(
    margin: EdgeInsets.only(right: 12.0.w, left: 24.0.w),
    width: 208.0.w,
    height: 240.0.h,
    padding: EdgeInsets.all(24.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16.0.r),
      color: Color(0xFF4F3D56),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              modelstxt.cardName,
              style: TextStyle(
                fontSize: 12.0.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFDFDFD),
              ),
            ),
            Image.asset(
              "assets/images/${modelstxt.cardType}.png",
              width: 52.0.w,
              height: 16.0.h,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Balance",
              style: TextStyle(
                fontSize: 14.0.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFFFDFDFD),
              ),
            ),
            SizedBox(
              height: 4.0.h,
            ),
            Text(
              "\$${modelstxt.balance}",
              style: TextStyle(
                fontSize: 24.0.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "**** ${modelstxt.lastnumber}",
              style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFFFDFDFD),
              ),
            ),
            Text(
              "${modelstxt.validity}",
              style: TextStyle(
                fontSize: 10.0.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFFFDFDFD),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

