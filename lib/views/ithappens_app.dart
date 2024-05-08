import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/html.dart'; // Import for web support
import 'package:it_happens/bLoC/ithappens_bloc.dart';
import 'package:it_happens/views/singup_view.dart';

void main() {
  runApp(ItHappensApp());
}

class ItHappensApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final channel = HtmlWebSocketChannel.connect('ws://localhost:8181'); // Use HtmlWebSocketChannel for web

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
          value: BlocProvider.of<ItHappensBloc>(context), // Provide the existing bloc
          child: SignupView(),
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
                  // Navigate to login screen
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
      body: Center(
        child: _buildPage(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Organizations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Activities',
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
        return Container(
          color: Colors.grey[200],
          child: Center(
            child: Text(
              'Organizations Page',
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        );
      case 1:
        return Container(
          color: Colors.grey[200],
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to signup screen
                Navigator.of(context).pushNamed('/signup');
              },
              child: Text('Signup'),
            ),
          ),
        );
      default:
        return Container();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}



