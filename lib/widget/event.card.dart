import 'package:flutter/material.dart';
import '../models/entities.dart';

class EventCard extends StatelessWidget {
  final Event event;

  const EventCard({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 3,
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text information about the event
            Text(
              event.Name ?? '',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800], // Flutter blue for text
              ),
            ),
            SizedBox(height: 8),
            Text(
              event.Description ?? '',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Location: ${event.Location ?? ''}',
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue[600], // Slightly lighter blue
              ),
            ),
            Text(
              'Date: ${event.Date.toString()}',
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue[600], // Slightly lighter blue
              ),
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
                        event.ImageUrl ?? '',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          print('Error loading image: ${event.ImageUrl}');
                          return Center(
                            child: Text(
                              'Image not available\n${event.ImageUrl ?? ''}',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.redAccent),
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
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      print('User attended Event');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue[700],
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Attend'),
                  ),
                  SizedBox(width: 16),
                  TextButton(
                    onPressed: () {
                      print('Enter event details');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue[700],
                      foregroundColor: Colors.white,
                    ),
                    child: Text('More Details'),
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
