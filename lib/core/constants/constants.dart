import 'package:flutter/material.dart';
import 'package:flutter_task/core/utils/assets.dart';

class Constants {
  Constants._();
  static List<BottomNavigationBarItem> bottomNavigationBarItemsList = [
    BottomNavigationBarItem(
      icon: Image.asset(Assets.imagesHomeIcon),
      label: 'الرئيسية',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(Assets.imagesChatIcon),
      label: 'محادثة',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(Assets.imagesAddIcon),
      label: 'أضف إعلان',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(Assets.imagesAdversIcon),
      label: 'إعلاناتي',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(Assets.imagesProfileIcon),
      label: 'حساب',
    ),
  ];
}
