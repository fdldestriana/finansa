import 'package:flutter/material.dart';

class CardModel {
  Color? color;
  int? balance;
  int? cardNumber;

  CardModel(
      {required this.color, required this.balance, required this.cardNumber});

  factory CardModel.fromJson(Map<String, dynamic> json) {
    final color = json['color'];
    final balance = json['balance'];
    final cardNumber = json['cardNumber'];
    return CardModel(color: color, balance: balance, cardNumber: cardNumber);
  }
}

class MenuModel {
  String? menu;
  String? imagePath;

  MenuModel(this.menu, this.imagePath);

  factory MenuModel.fromJson(Map<String, String> json) {
    final menu = json['menu'];
    final imagePath = json['imagePath'];
    return MenuModel(menu, imagePath);
  }
}
