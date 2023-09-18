import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePageModels/ModelsHomePage.dart';

Widget HomePageButton(HomePageButtonModels modeltxt) {
  return InkWell(
    onTap: () {},
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

Widget SearchWidget(String text) {
  return Container(
    width: double.infinity,
    height: 52.0.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0.r),
      color: Color(0xFFFDFDFD),
      border: Border.all(
        color: Color(0xFFE3E9ED),
      ),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          color: Color(0xFF9CA4AB),
        ),
        border: InputBorder.none,
        prefixIcon: Icon(
          Icons.search,
          color: Color(0xFF9CA4AB),
          size: 24.0.sp,
        ),
      ),
    ),
  );
}

// Widget MenuButton(String text, bool ischeck) {
//   return Expanded(
//     child: InkWell(
//       onTap: (){
        
//       },
//       child: Container(
//         alignment: Alignment.center,
//         margin: EdgeInsets.symmetric(horizontal: 4.0.w),
//         height: 24.0.h,
//         width: 60.w,
//         decoration: BoxDecoration(
//           color: ischeck ? const Color(0xFFFDFDFD) : const Color(0xFF9CA4AB),
//           borderRadius: BorderRadius.circular(4.0.r),
//         ),
//         child: Text(
//           text,
//           style: TextStyle(
//             fontSize: 14.0.sp,
//             fontWeight: FontWeight.w500,
//             color: ischeck ? const Color(0xFF9CA4AB) : const Color(0xFF1F2C37),
//           ),
//         ),
//       ),
//     ),
//   );
// }

// Widget MenuWidget() {
//   return Container(
//     width: double.infinity,
//     height: 36.0.h,
//     padding: EdgeInsets.all(4.0.h),
//     decoration: BoxDecoration(
//       color: Color(0xFFE2E0E4),
//       borderRadius: BorderRadius.circular(10.0.r),
//     ),
//     child: Row(
//       children: [
//         MenuButton("All"),
//         MenuButton("Favorite"),
//         MenuButton("Bank"),
//         MenuButton("e-Wallet"),
//       ],
//     ),
//   );
// }
