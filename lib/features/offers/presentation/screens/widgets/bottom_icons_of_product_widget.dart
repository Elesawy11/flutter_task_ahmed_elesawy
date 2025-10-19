import 'package:flutter/material.dart';
import 'package:flutter_task/core/responsive/size_helper_extention.dart';
import 'package:flutter_task/core/responsive/spacer_extenstion.dart';

import '../../../../../core/utils/assets.dart';

class BottomIconsOfProductWidget extends StatelessWidget {
  const BottomIconsOfProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Image.asset(
              Assets.imagesCompanyBadge,
              width: context.setMinSize(26),
              height: context.setMinSize(26),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Center(
                child: Image.asset(
                  Assets.imagesCheck,
                  width: context.setMinSize(12),
                  height: context.setMinSize(12),
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        Image.asset(
          Assets.imagesAddCartIcon,
          width: context.setMinSize(32),
          height: context.setMinSize(24),
        ),
        context.horizontalSpace(12),
        Image.asset(
          Assets.imagesLogo,
          width: context.setMinSize(15),
          height: context.setMinSize(22),
        ),
      ],
    );
  }
}
