import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePageButtonsPage/SendMoney/SendMoneyPersonal/SendMoneyButtonElements.dart';

class WidgetsModels {
  static Widget ContainerBorder(Widget widgetname) {
    return Container(
      width: double.infinity,
      height: 52.0.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.0.w,
        vertical: 12.0.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0.r),
        border: Border.all(
          color: const Color(0xFFECF1F6),
        ),
      ),
      child: widgetname,
    );
  }
}

class OrqagaQaytish {
  static void OldingilariniOchiribQaytish(
      BuildContext context, StatefulWidget widgetName) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => widgetName,
        ),
        (route) => false);
  }

  bittaOldinga(BuildContext context, StatefulWidget widget) {
    Navigator.pop(context);
  }
}

class TitleText {
  static Widget titleText(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 14.0.sp,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF1F2C37),
      ),
    );
  }

  static Widget appbartitletext(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Color(0xFF1F2C37),
        fontSize: 18.0.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class PagesButtons {
  static WidgetAsosiyButton(String title, BuildContext context) {
    return InkWell(
      onTap: () {
        ComfirmTransferDialog(
            context, title == "Send money" ? transfertype() : Container());
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
          title,
          style: TextStyle(
            fontSize: 14.0.sp,
            color: const Color(0xFfFDFDFD),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  static Widget AppBarBackButton(
      StatefulWidget NavigateWidget, BuildContext context) {
    return InkWell(
      onTap: () {
        OrqagaQaytish.OldingilariniOchiribQaytish(context, NavigateWidget);
      },
      child: CircleAvatar(
        radius: 24.0.r,
        backgroundImage: const AssetImage(
          "assets/images/NotificationBgHomePage.png",
        ),
        child: Icon(
          Icons.arrow_back,
          color: const Color(0xFF1F2C37),
          size: 24.0.sp,
        ),
      ),
    );
  }

  static Widget IconsButtons(IconData iconsname) {
    return InkWell(
      onTap: () {},
      child: CircleAvatar(
        radius: 24.0.r,
        backgroundImage: const AssetImage(
          "assets/images/NotificationBgHomePage.png",
        ),
        child: Icon(
          iconsname,
          color: const Color(0xFF1F2C37),
          size: 24.0.sp,
        ),
      ),
    );
  }
}

class InputText {
  static Widget _textinput(TextEditingController textcontroller, String hint) {
    return TextField(
      controller: textcontroller,
      style: TextStyle(
        fontSize: 12.0.sp,
        color: const Color(0xFF78828A),
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: const Color(0xFF78828A),
          fontSize: 12.0.sp,
          fontWeight: FontWeight.w400,
        ),
        border: InputBorder.none,
      ),
    );
  }

  static Widget _searchtext(String text, TextEditingController textcontroller) {
    return TextField(
      controller: textcontroller,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(
          fontSize: 12.0.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF9CA4AB),
        ),
        border: InputBorder.none,
        prefixIcon: Icon(
          Icons.search,
          color: const Color(0xFF9CA4AB),
          size: 24.0.sp,
        ),
      ),
    );
  }

  static Widget OnylText(TextEditingController textcontroller, String hint) {
    return WidgetsModels.ContainerBorder(_textinput(textcontroller, hint));
  }

  static Widget SearchInputText(
      String text, TextEditingController textcontroller) {
    return WidgetsModels.ContainerBorder(_searchtext(text, textcontroller));
  }
}
