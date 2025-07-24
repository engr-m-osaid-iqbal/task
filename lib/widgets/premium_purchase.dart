import 'package:flutter/material.dart';
import 'package:task/constants.dart';

class PremiumPurchase extends StatelessWidget {
  const PremiumPurchase({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.redAccent,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding * 1.5,
          vertical: defaultPadding,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('lib/icons/medal-star.png', width: 40, height: 40),
            const SizedBox(width: defaultPadding),
            Expanded(
              child: Text(
                "Purchase Membership & Get Discounts",
                style: Theme.of(context).textTheme.bodyLarge,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Icon(Icons.arrow_forward, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
