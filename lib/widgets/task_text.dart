import 'package:flutter/material.dart';
import 'package:task/constants.dart';

class LatestTasks extends StatelessWidget {
  const LatestTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding * 1.5,
        vertical: defaultPadding,
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
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right_alt)),
        ],
      ),
    );
  }
}
