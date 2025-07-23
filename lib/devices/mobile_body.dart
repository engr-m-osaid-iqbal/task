import 'package:flutter/material.dart';
import 'package:task/widgets/appbar.dart';
import 'package:task/widgets/banner_part.dart';
import 'package:task/widgets/botton_navigation.dart';
import 'package:task/widgets/points_part.dart';
import 'package:task/widgets/premium_purchase.dart';
import 'package:task/widgets/shop_now_text.dart';
import 'package:task/widgets/shopping_items.dart';
import 'package:task/widgets/task_text.dart';
import 'package:task/widgets/tasks_part.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: MyAppbar(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.asset('lib/images/banner.png', fit: BoxFit.cover),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.03),
            BannerPart(),
            SizedBox(height: screenHeight * 0.03),
            PointsPart(),
            SizedBox(height: screenHeight * 0.01),
            PremiumPurchase(),
            SizedBox(height: screenHeight * 0.001),
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
