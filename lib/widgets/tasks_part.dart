import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:task/data/tasks_data.dart';

class TasksPart extends StatelessWidget {
  const TasksPart({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 200,
      width: screenWidth,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(
              horizontal: defaultPadding,
              vertical: defaultPadding,
            ),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding,
                vertical: defaultPadding,
              ),
              child: TaskCardContent(index: index),
            ),
          );
        },
      ),
    );
  }
}

class TaskCardContent extends StatelessWidget {
  const TaskCardContent({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          taskList[index].title,
          textAlign: TextAlign.start,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          taskList[index].taskTitle,
          softWrap: true,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: secondaryColor),
        ),
        SizedBox(height: defaultPadding),
        Text(
          taskList[index].goal,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.inverseSurface,
          ),
          softWrap: true,
        ),
        SizedBox(height: defaultPadding),
        Row(
          children: [
            Icon(Icons.star_border_rounded, color: Colors.amber),
            SizedBox(width: defaultPadding),
            Text(
              taskList[index].reward,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
