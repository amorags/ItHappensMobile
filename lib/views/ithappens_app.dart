import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_happens/bLoC/ithappens_bloc.dart';
import 'package:it_happens/models/events.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import '../bLoC/ithappens_state.dart';
import 'event_list_page.dart';

void main() {
  runApp(ItHappensApp());
}

class ItHappensApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final channel = WebSocketChannel.connect(Uri.parse('ws://localhost:8181'));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'It Happens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => BlocProvider(
          create: (context) => ItHappensBloc(channel: channel),
          child: MainScreen(),
        ),
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

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
        title: Text('It Happens'),
      ),
      body: _buildPage(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Associations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return Center(
          child: Text(
            'Association Page',
            style: TextStyle(fontSize: 24.0),
          ),
        );
      case 1:
        return BlocBuilder<ItHappensBloc, ItHappensState>(
          builder: (context, state) {
            if (state is ItHappensStateLoaded) {
              return EventListPage(events: state.events);
            } else if (state is ItHappensStateError) {
              return Center(child: Text('Error: ${state.message}'));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        );
      default:
        return Container();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 1) {
      }
    });
  }
}
