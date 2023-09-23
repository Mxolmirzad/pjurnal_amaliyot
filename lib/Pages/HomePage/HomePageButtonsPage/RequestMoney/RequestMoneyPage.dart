import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePage.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePageButtonsPage/SendMoney/SendMoneyPersonal/SendMoneyButtonElements.dart';
import 'package:pjurnal_amaliyot/ozgarmaslar.dart';

class RequestoneyPage extends StatefulWidget {
  const RequestoneyPage({super.key});

  @override
  State<RequestoneyPage> createState() => _RequestoneyPageState();
}

class _RequestoneyPageState extends State<RequestoneyPage> {
  late String _datehinttext = "Select the date";
  late DateTime _selectedDate;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _description = TextEditingController();

  Widget _textInput(
      String title, TextEditingController controllerName, String texthint) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText.titleText(title),
          SizedBox(
            height: 8.0.h,
          ),
          InputText.OnylText(controllerName, texthint)
        ],
      ),
    );
  }

  Widget _dateWidget() {
    return SizedBox(
      height: 200,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.dateAndTime,
        initialDateTime: DateTime(1969, 1, 1, 11, 33),
        onDateTimeChanged: (DateTime newDateTime) {
          //Do Some thing
        },
        use24hFormat: false,
        minuteInterval: 1,
      ),
    );
  }

  Widget _inputDate() {
    return InkWell(
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1950),
          lastDate: DateTime.now(),
        ).then((pickedDate) {
          if (pickedDate == null) {
            return;
          }
          setState(() {
            _selectedDate = pickedDate;
          });
        });
        setState(() {
          _datehinttext =
              "${_selectedDate.year}-${_selectedDate.month.toString().length == 1 ? "0" + _selectedDate.month.toString() : _selectedDate.month}-${_selectedDate.day.toString().length == 1 ? "0" + _selectedDate.day.toString() : _selectedDate.day}";
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            _datehinttext,
            style: TextStyle(
              fontSize: 12.0.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF78828A),
            ),
          ),
          Icon(
            Icons.calendar_month_outlined,
            size: 24.0.sp,
            color: const Color(0xFF1F2C37),
          ),
        ],
      ),
    );
  }

  Widget _inputPay() {
    return Row(
      children: [
        dropdownMenuSendMoney(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.h),
          child: ListView(
            children: [
              SizedBox(
                height: 16.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  PagesButtons.AppBarBackButton(HomePage(), context),
                  TitleText.appbartitletext("Reuqest money"),
                  PagesButtons.IconsButtons(Icons.more_horiz),
                ],
              ),
              SizedBox(
                height: 24.0.h,
              ),
              _textInput("Payer", _name, "Name"),
              _textInput("Description", _description, "Detail description"),
              _textInput("Email address", _email, "Email"),
              TitleText.titleText("Monthly Due By"),
              SizedBox(
                height: 8.0.h,
              ),
              WidgetsModels.ContainerBorder(_inputDate()),
              SizedBox(
                height: 16.0.h,
              ),
              TitleText.titleText("Enter The Amount"),
              SizedBox(
                height: 8.0.h,
              ),
              dropdownMenuSendMoney(),
              SizedBox(
                height: 48.0.h,
              ),
              PagesButtons.WidgetAsosiyButton(
                "Request Money",
                context,
                _navigate,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigate(){
    ComfirmTransferDialog(
            context, TransferSuccesDialog(context),false);
  }
}
