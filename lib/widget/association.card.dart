import 'package:flutter/material.dart';
import '../models/entities.dart';

class AssociationCard extends StatelessWidget {
  final Association association;

  const AssociationCard({Key? key, required this.association}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text information about the event
            Text(
              association.Name ?? '',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Description: ${association.Description ?? ''}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Email: ${association.Email ?? ''}',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              'Phone: ${association.Phone.toString()}',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 16),
            // Row for images
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // First image using Image.network
                Flexible(
                  flex: 1,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        association.BannerUrl ?? '',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          print('Error loading image: ${association.BannerUrl}');
                          return Center(
                            child: Text(
                              'Image not available\n${association.BannerUrl ?? ''}',
                              style: TextStyle(fontSize: 10),
                              textAlign: TextAlign.center,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}