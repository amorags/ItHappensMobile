import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../bLoC/ithappens_bloc.dart';
import '../models/entities.dart';

class EventCard extends StatelessWidget {
  final Event event;

  const EventCard({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itHappensBloc = BlocProvider.of<ItHappensBloc>(context);

    // Format the date
    final DateFormat dateFormatter = DateFormat('yyyy-MM-dd');
    final String formattedDate = dateFormatter.format(event.Date);

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
              'Date: $formattedDate',
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue[600], // Slightly lighter blue
              ),
            ),
            Text(
              'Attendees: ${event.Amount}',
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: TextButton(
                      onPressed: () async {
                        final userId = await itHappensBloc.getUserId(); // Retrieve userId from shared preferences or state
                        if (userId != null) {
                          itHappensBloc.attend(
                            userId: int.parse(userId),
                            eventId: event.EventId ?? 0,
                          );
                          print('User attended Event');
                        } else {
                          print('User ID not found');
                        }
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue[700],
                        foregroundColor: Colors.white,
                      ),
                      child: Text('Attend'),
                    ),
                  ),
                  SizedBox(width: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
