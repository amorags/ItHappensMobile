import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: EventForm(),
      ),
    );
  }
}

class EventForm extends StatefulWidget {
  const EventForm({super.key});

  @override
  State<EventForm> createState() => _EventFormState();
}

class _EventFormState extends State<EventForm> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
