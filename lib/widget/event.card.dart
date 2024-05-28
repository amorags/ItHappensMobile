import 'package:flutter/material.dart';
import '../models/entities.dart';

class EventCard extends StatelessWidget {
  final Event event;

  const EventCard({Key? key, required this.event}) : super(key: key);

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
            Text(
              event.Name ?? '',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              event.Description ?? '',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Location: ${event.Location ?? ''}',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              'Date: ${event.Date.toString()}',
              style: TextStyle(fontSize: 14),
            ),
            // Add more fields as needed
          ],
        ),
      ),
    );
  }
}
