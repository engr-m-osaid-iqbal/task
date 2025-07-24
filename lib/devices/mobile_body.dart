import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:task/widgets/appbar.dart';
import 'package:task/widgets/banner_part.dart';
import 'package:task/widgets/botton_navigation.dart';
import 'package:task/widgets/points_part.dart';
import 'package:task/widgets/premium_purchase.dart';
import 'package:task/widgets/shop_now_text.dart';
import 'package:task/widgets/shopping_items.dart';
import 'package:task/widgets/task_text.dart';
import 'package:task/widgets/tasks_part.dart';
import 'package:task/widgets/drawer.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: defaultPadding),
            BannerPart(),
            SizedBox(height: defaultPadding),
            PointsPart(),
            SizedBox(height: defaultPadding),
            PremiumPurchase(),
            SizedBox(height: defaultPadding),
            LatestTasks(),
            TasksPart(),
            ShopNowText(),
            ShoppingItemsPart(),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
