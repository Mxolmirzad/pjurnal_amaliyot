import 'package:flutter/material.dart';

class HomePageButtonModels {
  String title;
  String subtitle;
  Icon iconName;

  HomePageButtonModels(
      {required this.title, required this.subtitle, required this.iconName});
}

class HomePagePaymentCardsModels {
  String cardName;
  String cardType;
  double balance;
  int lastnumber;
  String validity;

  HomePagePaymentCardsModels({
    required this.cardName,
    required this.cardType,
    required this.balance,
    required this.lastnumber,
    required this.validity,
  });
}
