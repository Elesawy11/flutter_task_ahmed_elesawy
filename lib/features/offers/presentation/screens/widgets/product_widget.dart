import 'package:flutter/material.dart';
import 'package:flutter_task/core/responsive/size_helper_extention.dart';
import 'package:flutter_task/core/responsive/spacer_extenstion.dart';
import 'package:flutter_task/core/themes/fonts_style.dart';
import '../../../../../core/themes/app_color.dart';
import '../../../../../core/utils/assets.dart';
import 'bottom_icons_of_product_widget.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.setWidth(158),
      height: context.setHeight(360),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.setMinSize(4)),
        border: Border.all(color: AppColor.gray10),
      ),
      child: Column(
        children: [
          Image.asset(
            Assets.imagesTeshert,

            height: context.setHeight(215),
            fit: BoxFit.fill,
          ),
          context.verticalSpace(8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.setWidth(8)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: context.setWidth(120),
                      child: Text(
                        'جاكيت من الصوف مناسب',
                        style: context.font14w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Image.asset(
                      Assets.imagesBxsOffer,
                      width: context.setMinSize(20),
                      height: context.setMinSize(20),
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                context.verticalSpace(8),
                Row(
                  children: [
                    RichText(
                      overflow: TextOverflow.ellipsis,

                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '32,000,000جم/',
                            style: context.font14w500.copyWith(
                              color: AppColor.orange,
                            ),
                          ),
                          TextSpan(
                            text: '60,000,000'.substring(0, 2),
                            style: context.font12w400.copyWith(
                              color: AppColor.gray05,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          TextSpan(
                            text: '...',
                            style: context.font14w500.copyWith(
                              color: AppColor.orange,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      Assets.imagesFavorite,
                      width: context.setMinSize(20),
                      height: context.setMinSize(20),
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                context.verticalSpace(8),
                Row(
                  children: [
                    Image.asset(
                      Assets.imagesLocalFireDepartment,
                      width: context.setMinSize(12),
                      height: context.setMinSize(12),
                    ),
                    context.horizontalSpace(4),
                    Text(
                      'تم بيع 3.3k+',
                      style: context.font10w400.copyWith(
                        color: AppColor.gray05,
                      ),
                    ),
                  ],
                ),
                context.verticalSpace(27),
                const BottomIconsOfProductWidget(),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
