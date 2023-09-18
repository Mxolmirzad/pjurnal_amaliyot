class ContactModels {
  String profilImage;
  String name;
  String banktype;
  String cardnumber;
  bool favorite = false;

  ContactModels({
    required this.profilImage,
    required this.name,
    required this.banktype,
    required this.cardnumber,
  });
}