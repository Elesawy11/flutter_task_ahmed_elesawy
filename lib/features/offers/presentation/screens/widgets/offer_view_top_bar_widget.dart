import 'package:flutter/material.dart';
import '../../../../../core/responsive/size_helper_extention.dart';
import '../../../../../core/themes/fonts_style.dart';
import '../../../../../core/themes/app_color.dart';

class OfferViewTopBarWidget extends StatelessWidget {
  const OfferViewTopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('استكشف العروض', style: context.font16w500),
        const Spacer(),
        Text(
          'الكل',
          style: context.font16w700.copyWith(color: AppColor.gray05),
        ),
        IconButton(
          icon: Icon(
            Icons.arrow_forward,
            color: AppColor.gray05,
            size: context.setMinSize(24),
          ),
          onPressed: () {
            // context.pop();
          },
        ),
      ],
    );
  }
}
