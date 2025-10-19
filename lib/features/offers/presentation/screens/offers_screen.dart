import 'package:flutter/material.dart';
import '../../../../core/responsive/size_helper_extention.dart';
import '../../../../core/responsive/spacer_extenstion.dart';
import 'widgets/categories_list_view_widget.dart';
import 'widgets/hint_widget.dart';
import 'widgets/offer_view_top_bar_widget.dart';
import 'widgets/product_widget.dart';
import 'widgets/sub_categories_list_view_widgets.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({super.key});

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.setWidth(16)),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: OfferViewTopBarWidget()),
              SliverToBoxAdapter(child: context.verticalSpace(12)),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: context.setHeight(41),
                  child: const CategoriesListViewWidget(),
                ),
              ),
              SliverToBoxAdapter(child: context.verticalSpace(33)),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: context.setHeight(78),
                  child: const SubCategoriesListViewWidget(),
                ),
              ),
              SliverToBoxAdapter(child: context.verticalSpace(33)),

              const SliverToBoxAdapter(child: HintWidget()),
              SliverToBoxAdapter(child: context.verticalSpace(20)),

              SliverGrid.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: context.setMinSize(12),
                  crossAxisSpacing: context.setMinSize(12),
                  childAspectRatio:
                      context.setWidth(158) / context.setHeight(360),
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return const ProductWidget();
                },
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
