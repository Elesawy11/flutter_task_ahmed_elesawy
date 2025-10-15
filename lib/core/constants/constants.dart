import 'package:flutter/material.dart';

class Constants {
  Constants._();
  static const List<BottomNavigationBarItem> bottomNavigationBarItemsList = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
    BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'محادثة'),
    BottomNavigationBarItem(
      icon: Icon(Icons.add_box_outlined),
      label: 'أضف إعلان',
    ),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'حساب'),
  ];
}
