import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_happens/bLoC/ithappens_bloc.dart';
import 'package:it_happens/models/events.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Login'),
    ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();

}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _userType_idController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _userType_idController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: EdgeInsets.all(16.0),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Incorrect Username?';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: EdgeInsets.all(16.0),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password Incorrect?';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if(_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  String username = _usernameController.text;
                  String password = _passwordController.text;
                  int userTyper_id = 1;

                  print('sending login request: '
                  'username=$username, password=$password,');

                  context.read<ItHappensBloc>().add(ClientWantsToLogin(
                      eventType: ClientWantsToLogin.name,
                      username: username,
                      password: password,
                      userType_id: userTyper_id,
                  ));
                }
              },
              child: Text('Login'),
            )
          ],
        )
    );
  }

}
