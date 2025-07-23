import 'package:flutter/material.dart';
import 'package:task/widgets/banner_part.dart';
import 'package:task/widgets/points_part.dart';
import 'package:task/widgets/premium_purchase.dart';
import 'package:task/widgets/task_text.dart';
import 'package:task/widgets/tasks_part.dart';
import 'package:task/widgets/shop_now_text.dart';
import 'package:task/widgets/shopping_items.dart';
import 'package:task/widgets/botton_navigation.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Home',
          style: TextStyle(
            color: Theme.of(context).textTheme.titleMedium!.color,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  BannerPart(),
                  SizedBox(height: 16),
                  PointsPart(),
                  SizedBox(height: 16),
                  PremiumPurchase(),
                  SizedBox(height: 16),
                  LatestTasks(),
                  TasksPart(),
                ],
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              flex: 1,
              child: Column(children: [ShopNowText(), ShoppingItemsPart()]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
