import 'package:flutter/material.dart';
import 'package:task/constants.dart';

class PointsPart extends StatelessWidget {
  const PointsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: primaryColor,
        ),
        padding: const EdgeInsets.fromLTRB(
          defaultPadding * 1.5,
          defaultPadding,
          defaultPadding,
          defaultPadding,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Your Points',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'Purchase vouchers using your points',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            const SizedBox(width: defaultPadding),
            Text("11,450", style: Theme.of(context).textTheme.titleLarge),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_arrow_up_sharp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
