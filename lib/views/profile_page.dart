import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/ithappens_bloc.dart';
import '../bloc/ithappens_state.dart';
import '../models/entities.dart';
import '../widget/event.card.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itHappensBloc = BlocProvider.of<ItHappensBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Profile'),
      ),
      body: BlocBuilder<ItHappensBloc, ItHappensState>(
        builder: (context, state) {
          if (state is ItHappensStateLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is ItHappensStateLoadedUserEvents) {
            final events = state.events;
            return _buildEventList(events);
          } else if (state is ItHappensStateError) {
            return Center(child: Text(state.message));
          } else {
            return Center(child: Text('No events found.'));
          }
        },
      ),
    );
  }

  Widget _buildEventList(List<Event> events) {
    return events.isEmpty
        ? Center(child: Text('No events available.'))
        : ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, index) {
        return EventCard(event: events[index]);
      },
    );
  }
}
