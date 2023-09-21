import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePage.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePageButtonsPage/SendMoney/SendMoneyModels/ContactModels.dart';
import 'package:pjurnal_amaliyot/Pages/HomePage/HomePageButtonsPage/SendMoney/SendMoneyPersonal/SendMoneyPersonalPage.dart';
import 'package:pjurnal_amaliyot/ozgarmaslar.dart';

class SendMoneyPage extends StatefulWidget {
  const SendMoneyPage({super.key});

  @override
  State<SendMoneyPage> createState() => _SendMoneyPageState();
}

class _SendMoneyPageState extends State<SendMoneyPage> {
  final TextEditingController _searchtext = TextEditingController();

  final List<bool> _menuButton = [true, false, false, false];

  final List<ContactModels> _contactFavorite = [];

  final List<ContactModels> _contact = [
    ContactModels(
      profilImage: "assets/images/ProfilImagesEllips.png",
      name: "Tiana Saris",
      banktype: "BCA",
      cardnumber: "4565 6548",
    ),
    ContactModels(
      profilImage: "assets/images/ProfilImagesEllips.png",
      name: "Lorem Ipsum",
      banktype: "BCA",
      cardnumber: "5322 5531",
    ),
    ContactModels(
      profilImage: "assets/images/ProfilImagesEllips.png",
      name: "Ipsum Lorem",
      banktype: "UZB",
      cardnumber: "7891 4448",
    ),
    ContactModels(
      profilImage: "assets/images/ProfilImagesEllips.png",
      name: "Kakara None",
      banktype: "UZB",
      cardnumber: "5564 8875",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 16.0.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PagesButtons.AppBarBackButton(HomePage(), context),
                      TitleText.appbartitletext("Send money"),
                      PagesButtons.IconsButtons(Icons.add),
                    ],
                  ),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  InputText.SearchInputText("Search contact", _searchtext),
                  SizedBox(
                    height: 16.0.h,
                  ),
                  MenuWidget(),
                  SizedBox(
                    height: 34.0.h,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount:
                    _menuButton[0] ? _contact.length : _contactFavorite.length,
                itemBuilder: (context, index) {
                  if (_menuButton[0]) {
                    return _ContactWidget(_contact[index]);
                  } else {
                    return _ContactWidget(_contactFavorite[index]);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _ContactWidget(ContactModels contact) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SendMoneyPersonalPage(),
          ),
        );
      },
      child: ListTile(
        leading: Image.asset(
          contact.profilImage,
          width: 48.w,
          height: 48.0.h,
        ),
        title: Text(
          contact.name,
          style: TextStyle(
            fontSize: 14.0.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1F2C37),
          ),
        ),
        subtitle: Text(
          "${contact.banktype} • ${contact.cardnumber} ****",
          style: TextStyle(
              fontSize: 12.0.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF9CA4AB)),
        ),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              contact.favorite = !contact.favorite;
              if (contact.favorite) {
                _contactFavorite.add(contact);
              } else {
                _contactFavorite.remove(contact);
              }
            });
          },
          icon: Icon(
            contact.favorite ? Icons.star_sharp : Icons.star_border_outlined,
            color: const Color(0xFF804E89),
          ),
        ),
      ),
    );
  }

  Widget MenuButton(String text, int index) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _menuButton[0] = false;
            _menuButton[1] = false;
            _menuButton[3] = false;
            _menuButton[2] = false;
            _menuButton[index] = true;
          });
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 4.0.w),
          height: 24.0.h,
          width: 60.w,
          decoration: BoxDecoration(
            color: _menuButton[index]
                ? const Color(0xFFFDFDFD)
                : const Color(0xFFE2E0E4),
            borderRadius: BorderRadius.circular(4.0.r),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14.0.sp,
              fontWeight: FontWeight.w500,
              color: !_menuButton[index]
                  ? const Color(0xFF9CA4AB)
                  : const Color(0xFF1F2C37),
            ),
          ),
        ),
      ),
    );
  }

  Widget MenuWidget() {
    return Container(
      width: double.infinity,
      height: 36.0.h,
      padding: EdgeInsets.all(4.0.h),
      decoration: BoxDecoration(
        color: const Color(0xFFE2E0E4),
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: Row(
        children: [
          MenuButton("All", 0),
          MenuButton("Favorite", 1),
          MenuButton("Bank", 2),
          MenuButton("e-Wallet", 3),
        ],
      ),
    );
  }
}
