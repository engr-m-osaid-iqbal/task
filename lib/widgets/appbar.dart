import 'package:flutter/material.dart';
import 'package:task/constants.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding * 0.75),
        decoration: BoxDecoration(gradient: primaryColor),
        child: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white),
          title: Text('Home', style: Theme.of(context).textTheme.titleLarge),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('lib/icons/notification-bing.png'),
            ),
            IconButton(
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
