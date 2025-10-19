import 'package:flutter/material.dart';
import '../../../../../core/responsive/size_helper_extention.dart';
import '../../../../../core/themes/fonts_style.dart';

import '../../../../../core/themes/app_color.dart';

class CategoriesListViewWidget extends StatelessWidget {
  const CategoriesListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(context.setMinSize(12)),
          margin: EdgeInsets.only(right: context.setWidth(8)),
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.gray10),
            borderRadius: BorderRadius.circular(context.setMinSize(4)),
          ),
          child: Text('الملابس', style: context.font14w500),
        );
      },
    );
  }
}
