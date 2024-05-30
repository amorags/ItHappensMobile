import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_happens/models/entities.dart';
import 'package:it_happens/views/login_view.dart';
import 'package:it_happens/bLoC/ithappens_bloc.dart';
import 'package:it_happens/models/events.dart';
import 'package:it_happens/views/profile_page.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import '../bLoC/ithappens_state.dart';
import '../models/events.dart';
import 'Association_list_page.dart';
import 'event_list_page.dart';
import 'singup_view.dart';

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
        '/signup': (context) => BlocProvider.value(
          value: BlocProvider.of<ItHappensBloc>(context),
          child: SignupView(),
        ),
        '/login': (context) => BlocProvider.value(
          value: BlocProvider.of<ItHappensBloc>(context),
          child: LoginView(),
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
    _fetchAssociations();
  }

  void _fetchEvents() {
    context.read<ItHappensBloc>().add(ClientEvent.ClientWantsToGetEventFeed());
    print('Sending event to retrieve events: ClientWantsToGetEventFeed'); // Log the event details
  }

  void _fetchAssociations() {
    context.read<ItHappensBloc>().add(ClientEvent.ClientWantsToGetAssociationFeed());
    print('Sending event to retrieve events: ClientWantsToGetEventFeed'); // Log the event details
  }

  Future<void> _fetchUserEvents() async {
    final userId = await context.read<ItHappensBloc>().getUserId();
    if (userId != null) {
      context.read<ItHappensBloc>().getUserEvents(int.parse(userId));
  }}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('It Happens',
        style: TextStyle(
        fontWeight: FontWeight.bold,
        ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: PopupMenuButton<String>(
              icon: Icon(Icons.more_vert),
              onSelected: (value) {
                if (value == 'signup') {
                  Navigator.of(context).pushNamed('/signup');
                } else if (value == 'login') {
                  Navigator.of(context).pushNamed('/login');
                } else if (value == 'logout') {
                  // Perform logout action
                }
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'signup',
                  child: Text('Signup'),
                ),
                PopupMenuItem<String>(
                  value: 'login',
                  child: Text('Login'),
                ),
                PopupMenuItem<String>(
                  value: 'logout',
                  child: Text('Logout'),
                ),
              ],
            ),
          ),
        ],
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
          BottomNavigationBarItem(
              icon: Icon(Icons.event),
          label: 'Profile'
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
        return BlocBuilder<ItHappensBloc, ItHappensState>(
          builder: (context, state) {
            _fetchAssociations();
            if (state is ItHappensStateLoadedAss) {
              return AssociationListPage(associations: state.associations);
            } else if (state is ItHappensStateError) {
              return Center(child: Text('Error: ${state.message}'));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
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

      case 2:
        return BlocBuilder<ItHappensBloc, ItHappensState>(
          builder: (context, state) {
            _fetchUserEvents();
            if (state is ItHappensStateLoadedUserEvents) {
              return ProfilePage(events: state.events);
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
        _fetchEvents();
      }
    });
  }
}
