import 'package:flutter/material.dart';

class LatestTasks extends StatelessWidget {
  const LatestTasks({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.fromLTRB(
        screenWidth * 0.05,
        screenHeight * 0.01,
        screenWidth * 0.03,
        screenHeight * 0.001,
      ),
      child: Row(
        children: [
          Text(
            'Latest Tasks',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(color: Colors.black),
          ),
          Spacer(),
          Text(
            'View all',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_right_alt, size: screenWidth * 0.1),
          ),
        ],
      ),
    );
  }
}
