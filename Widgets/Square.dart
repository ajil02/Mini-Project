import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final String foodtile;
  final String fimage;
  Square({required this.foodtile, required this.fimage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(10), // Add padding to the container
        height: 150,
        color: Colors.red.withOpacity(0.1),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.start, // Align to the start of the row
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Image.asset(fimage, fit: BoxFit.cover),
            ),
            SizedBox(width: 30), // Adjust the spacing
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Align to the center of the column
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodtile,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 20), // Adjust the spacing
                  ElevatedButton(
                    onPressed: () {
                      // Add to cart logic here
                      // You can use Provider, Bloc, or any state management solution
                      // to handle the cart functionality.
                      print('Added to Cart: $foodtile');
                    },
                    child: Text('Add to Cart'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
