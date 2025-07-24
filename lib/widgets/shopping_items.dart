import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:task/data/shopping_data.dart';

class ShoppingItemsPart extends StatelessWidget {
  const ShoppingItemsPart({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth,
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(
              vertical: defaultPadding,
              horizontal: defaultPadding,
            ),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Container(
              padding: EdgeInsets.all(defaultPadding * 0.5),
              width: 180,
              height: 190,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        shoppingItems[index].productPicture,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value:
                                  loadingProgress.expectedTotalBytes != null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                      : null,
                            ),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[200],
                            child: const Icon(Icons.broken_image),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: defaultPadding),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      shoppingItems[index].productName,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.inverseSurface,
                      ),
                    ),
                  ),
                  SizedBox(height: defaultPadding),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          'Price: ${shoppingItems[index].productPrice}',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.inverseSurface,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_cart_checkout),
                        ),
                      ],
                    ),
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
