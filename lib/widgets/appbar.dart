import 'package:flutter/material.dart';
import 'package:task/constants.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final iconSize = MediaQuery.of(context).size.width * 0.06;

    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Container(
        decoration: BoxDecoration(gradient: primaryColor),
        child: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white),
          title: Text('Home', style: Theme.of(context).textTheme.titleLarge),
          centerTitle: true,
          actions: [
            IconButton(
              iconSize: iconSize,
              onPressed: () {},
              icon: Image.asset('lib/icons/notification-bing.png'),
            ),
            IconButton(
              iconSize: iconSize,
              onPressed: () {},
              icon: Image.asset('lib/icons/shopping-cart.png'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
