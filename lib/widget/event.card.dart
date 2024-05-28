import 'package:flutter/material.dart';
import '../models/entities.dart'; // Ensure correct path

class EventCard extends StatelessWidget {
  final Event event;

  const EventCard({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(event.imageUrl, fit: BoxFit.cover), // Updated to match new entity field names
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(event.name, style: Theme.of(context).textTheme.headline6), // Updated to match new entity field names
                const SizedBox(height: 4.0),
                Text(event.location, style: Theme.of(context).textTheme.subtitle1), // Updated to match new entity field names
                const SizedBox(height: 4.0),
                Text(event.description),
                const SizedBox(height: 4.0),
                Text('Date: ${event.date.toLocal()}'), // Updated to match new entity field names
                const SizedBox(height: 4.0),
                Text('Amount: ${event.amount}'), // Updated to match new entity field names
              ],
            ),
          ),
        ],
      ),
    );
  }
}
