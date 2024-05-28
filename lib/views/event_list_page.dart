import 'package:flutter/material.dart';
import '../models/entities.dart';

class EventListPage extends StatelessWidget {
  final List<Event> events;

  const EventListPage({Key? key, required this.events}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: _buildEventList(),
    );
  }

  Widget _buildEventList() {
    return events.isEmpty
        ? Center(
      child: Text('No events available.'),
    )
        : ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        return ListTile(
          title: Text(event.Name ?? ''),
          subtitle: Text(event.Description ?? ''),
          onTap: () {
            // Handle tapping on the event
          },
        );
      },
    );
  }
}
