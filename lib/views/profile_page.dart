import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_happens/widget/user.card.dart';
import '../bloc/ithappens_bloc.dart';
import '../bloc/ithappens_state.dart';
import '../models/entities.dart';
import '../widget/user.card.dart';


class ProfilePage extends StatelessWidget {
  final List<Event> events;

  const ProfilePage({Key? key, required this.events}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Events',
          style: TextStyle(
          ),
        ),
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
        return UserCard(event: events[index]);
      },
    );
  }
}
