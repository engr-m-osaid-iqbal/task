import 'package:flutter/material.dart';
import 'package:task/constants.dart';

class PointsPart extends StatelessWidget {
  const PointsPart({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: primaryColor,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Points',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Purchase vouchers using your points',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          Spacer(),
          Text("11,450", style: Theme.of(context).textTheme.titleLarge),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.keyboard_arrow_up_sharp, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
