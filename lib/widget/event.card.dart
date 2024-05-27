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
          Image.network(event.ImageUrl, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(event.Name, style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 4.0),
                Text(event.Location, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 4.0),
                Text(event.Description),
                const SizedBox(height: 4.0),
                Text('Date: ${event.Date.toLocal()}'),
                const SizedBox(height: 4.0),
                Text('Amount: ${event.Amount}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
