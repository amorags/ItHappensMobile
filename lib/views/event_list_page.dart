import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_happens/models/entities.dart';
import '../bLoC/ithappens_bloc.dart';
import '../bLoC/ithappens_state.dart';
import '../widget/event.card.dart';

class EventListPage extends StatefulWidget {
  const EventListPage({Key? key, required List<Event> events}) : super(key: key);

  @override
  _EventListPageState createState() => _EventListPageState();
}

class _EventListPageState extends State<EventListPage> {
  late ItHappensBloc _itHappensBloc;

  @override
  void initState() {
    super.initState();
    _itHappensBloc = BlocProvider.of<ItHappensBloc>(context);
    _itHappensBloc.getEventFeed(); // Request real event feed data
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event List'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _itHappensBloc.getEventFeed(); // Refresh event feed data
            },
          ),
        ],
      ),
      body: BlocBuilder<ItHappensBloc, ItHappensState>(
        builder: (context, state) {
          return state.when(
            empty: () => Center(
              child: CircularProgressIndicator(),
            ),
            loggedIn: (token, userType, events) {
              return ListView.builder(
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return EventCard(event: events[index]);
                },
              );
            },
            error: (message) => Center(
              child: Text(message),
            ),
            loading: () => Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
