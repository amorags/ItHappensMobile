import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bLoC/ithappens_bloc.dart';
import '../models/entities.dart';
import '../models/events.dart';
import '../widget/event.card.dart';

class EventListPage extends StatefulWidget {

  final List<Event> events;

  const EventListPage({Key? key, required this.events}) : super(key: key);

  @override
  State<EventListPage> createState() => _EventListPageState();
}

class _EventListPageState extends State<EventListPage> {

  @override
  void initState() {
    super.initState();
    _fetchEvents();
  }

  void _fetchEvents() {
    context.read<ItHappensBloc>().add(ClientEvent.ClientWantsToGetEventFeed());
    print('Sending event to retrieve events: ClientWantsToGetEventFeed'); // Log the event details
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events',
        style: TextStyle(
        ),
      ),
      ),
      body: _buildEventList(),
    );
  }

  Widget _buildEventList() {
    return widget.events.isEmpty
        ? Center(
      child: Text('No events available.'),
    )
        : ListView.builder(
      itemCount: widget.events.length,
      itemBuilder: (context, index) {
        return EventCard(event: widget.events[index]);
      },
    );
  }
}
