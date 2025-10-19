import 'package:flutter/material.dart';
import 'package:flutter_task/core/responsive/size_helper_extention.dart';
import 'package:flutter_task/core/responsive/spacer_extenstion.dart';
import 'package:flutter_task/core/themes/fonts_style.dart';
import '../../../../../core/utils/assets.dart';

class SubCategoriesListViewWidget extends StatelessWidget {
  const SubCategoriesListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: context.setMinSize(12)),
          child: Container(
            width: context.setWidth(73),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(context.setMinSize(4)),
            ),

            child: Column(
              children: [
                Image.asset(
                  Assets.imagesMobile,
                  width: context.setMinSize(73),
                  height: context.setMinSize(56),
                  fit: BoxFit.fill,
                ),
                context.verticalSpace(8),
                Text(
                  'ساعات',
                  style: context.font12w400,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
