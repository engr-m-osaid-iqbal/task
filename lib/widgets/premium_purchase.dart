import 'package:flutter/material.dart';

class PremiumPurchase extends StatelessWidget {
  const PremiumPurchase({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.redAccent,
      ),
      width: screenWidth * 0.95,
      height: screenHeight * 0.1,
      padding: EdgeInsets.fromLTRB(
        screenWidth * 0.06,
        screenHeight * 0.028,
        screenWidth * 0.02,
        screenHeight * 0.03,
      ),
      child: Row(
        children: [
          Image.asset('lib/icons/medal-star.png', width: screenWidth * 0.09),
          Spacer(),
          Text(
            "Purchase Membership & Get Discounts ",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Spacer(),
          IconButton(
            iconSize: screenWidth * 0.06,
            onPressed: () {},
            icon: Icon(Icons.arrow_forward, color: Colors.white),
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
