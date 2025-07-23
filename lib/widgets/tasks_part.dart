import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:task/data/tasks_data.dart';

class TasksPart extends StatelessWidget {
  const TasksPart({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight * 0.2,
      width: screenWidth,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.fromLTRB(
              screenWidth * 0.05,
              screenHeight * 0.01,
              screenWidth * 0.00,
              screenHeight * 0.01,
            ),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.035),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    taskList[index].title,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.008),
                  Text(
                    taskList[index].taskTitle,
                    softWrap: true,
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge!.copyWith(color: secondaryColor),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    taskList[index].goal,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Row(
                    children: [
                      Icon(Icons.star_border_rounded, color: Colors.amber),
                      SizedBox(width: screenWidth * 0.015),
                      Text(
                        taskList[index].reward,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.inverseSurface,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
