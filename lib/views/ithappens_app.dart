import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_happens/models/entities.dart';
import 'package:it_happens/views/login_view.dart';
import 'package:it_happens/bLoC/ithappens_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import '../bLoC/ithappens_state.dart';
import '../models/events.dart';
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
  }

  void _fetchEvents() {
    context.read<ItHappensBloc>().add(ClientEvent.clientWantsToRetrieveEventFeed(
      Event_Id: 0, // Dummy values, since actual fetching logic will be on the server
      Name: '',
      Location: '',
      ImageUrl: '',
      Description: '',
      Date: DateTime.now(),
      Amount: 0,
      Association_Id: 0,
      Booking_Id: 0,
    ));
    print('Sending event to retrieve events: $Event'); // Log the event details

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('It Happens'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: PopupMenuButton<String>(
              icon: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png',
                width: 40,
                height: 40,
              ),
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
            if (state is ItHappensStateLoggedIn) {
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
        _fetchEvents();
      }
    });
  }
}
