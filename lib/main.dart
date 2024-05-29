import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart'; // Use web_socket_channel instead of web_socket_channel/io.dart
import 'package:it_happens/bLoC/ithappens_bloc.dart'; // Import your bloc
import 'views/ithappens_app.dart'; // Import your app's main UI widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Establish WebSocket connection
    final wsUri = Uri.parse('ws://localhost:8181');
    final channel = WebSocketChannel.connect(wsUri);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'It Happens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        create: (context) => ItHappensBloc(channel: channel),
        child: ItHappensApp(),
      ),
    );
  }
}


