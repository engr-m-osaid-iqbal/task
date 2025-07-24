import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:task/widgets/appbar.dart';
import 'package:task/widgets/banner_part.dart';
import 'package:task/widgets/points_part.dart';
import 'package:task/widgets/premium_purchase.dart';
import 'package:task/widgets/task_text.dart';
import 'package:task/widgets/tasks_part.dart';
import 'package:task/widgets/shop_now_text.dart';
import 'package:task/widgets/shopping_items.dart';
import 'package:task/widgets/botton_navigation.dart';
import 'package:task/widgets/drawer.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      drawer: MyDrawer(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    BannerPart(),
                    const SizedBox(height: defaultPadding),
                    PointsPart(),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    PremiumPurchase(),
                    const SizedBox(height: defaultPadding),
                    LatestTasks(),
                    TasksPart(),
                    ShopNowText(),
                    ShoppingItemsPart(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
