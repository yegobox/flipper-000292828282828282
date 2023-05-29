import 'package:flutter/material.dart';
import 'package:flipper_dashboard/product_view.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToFavorites extends StatelessWidget {
  final int favoriteIndex;
  AddToFavorites({Key? key, required this.favoriteIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.0),
            Text('Add Product to Favorites',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 16.0),
            Expanded(
                child: ProductView.favoriteMode(
              favIndex: favoriteIndex,
            )),
            ElevatedButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
