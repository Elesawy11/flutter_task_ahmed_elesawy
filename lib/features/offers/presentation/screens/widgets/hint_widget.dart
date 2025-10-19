import 'package:flutter/material.dart';
import 'package:flutter_task/core/responsive/size_helper_extention.dart';
import 'package:flutter_task/core/themes/fonts_style.dart';
import '../../../../../core/themes/app_color.dart';

class HintWidget extends StatelessWidget {
  const HintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.setWidth(8)),
      decoration: BoxDecoration(
        color: AppColor.orange5,
        borderRadius: BorderRadius.circular(context.setMinSize(4)),
      ),
      height: context.setHeight(32),
      width: double.infinity,
      child: Row(
        children: [
          Icon(Icons.done, color: AppColor.green, size: context.setMinSize(24)),
          Text(
            'شحن مجانى',
            style: context.font12w400.copyWith(color: AppColor.green),
          ),
          const Spacer(),

          Text('!لأى عرض تطلبه دلوقتى', style: context.font10w400),
        ],
      ),
    );
  }
}
