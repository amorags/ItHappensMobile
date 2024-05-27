import 'package:flutter/material.dart';
import '../models/entities.dart';
import '../widget/event.card.dart';


class EventListPage extends StatelessWidget {
  final List<Event> events;

  const EventListPage({Key? key, required this.events}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, index) {
        return EventCard(event: events[index]);
      },
    );
  }
}
