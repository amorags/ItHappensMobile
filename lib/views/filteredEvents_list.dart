import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_happens/bLoC/ithappens_bloc.dart';

import '../bLoC/ithappens_state.dart';
import '../models/entities.dart';
import '../models/events.dart';
import '../widget/event.card.dart';

class FilteredEventsPage extends StatefulWidget {
  final Association association;

  const FilteredEventsPage({Key? key, required this.association}) : super(key: key);

  @override
  State<FilteredEventsPage> createState() => _FilteredEventsPageState();
}

class _FilteredEventsPageState extends State<FilteredEventsPage> {
  late int associationId;
  late String? associationName;
  late List<Event> filteredEvents;

  @override
  void initState() {
    super.initState();
    associationId = widget.association.AssociationId;
    associationName = widget.association.Name;
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
        title: Text(associationName! + ' Events'),
      ),
      body: BlocBuilder<ItHappensBloc, ItHappensState>(
        builder: (context, state) {
          if (state is ItHappensStateLoaded) {
            // Assuming your state has a list of events
            filteredEvents = state.events.where((event) => event.AssociationId == associationId).toList();

            if (filteredEvents.isEmpty) {
              return Center(child: Text('No events found for this association.'));
            }

            return ListView.builder(
              itemCount: filteredEvents.length,
              itemBuilder: (context, index) {
                return EventCard(event: filteredEvents[index]);
              },
            );
          } else if (state is ItHappensStateLoaded) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Center(child: Text('Something went wrong!'));
          }
        },
      ),
    );
  }
}
